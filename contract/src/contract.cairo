use starknet::ContractAddress;

#[starknet::interface]
pub trait IZkAuction<TContractState> {
    fn commit_bid(ref self: TContractState, bid_proof: Span<felt252>, bid_hash: felt252);
    fn reveal_bid(ref self: TContractState, bid_amount: u32, user_salt: felt252);
    fn reward_winner(ref self: TContractState) -> (Option<ContractAddress>, u32);
    fn withdraw_funds(ref self: TContractState);
}

#[starknet::interface]
trait IGroth16VerifierBN254<TContractState> {
    fn verify_groth16_proof_bn254(
        self: @TContractState, full_proof_with_hints: Span<felt252>,
    ) -> Option<Span<u256>>;
}

mod errors {
    pub const BID_ORDER: felt252 = 'Max bid must be > Min bid';
    pub const BID_OUT_OF_RANGE: felt252 = 'Bid out of range';
    pub const NULL_DURATION: felt252 = 'Duration must be > 0';
    pub const WRONG_COMMITMENT: felt252 = 'Bid & salt do not exist';
    pub const PROOF_NOT_VERIFIED: felt252 = 'Proof is not correct';
    pub const AUCTION_OVER: felt252 = 'Auction is over';
    pub const NOT_REVEAL_PHASE: felt252 = 'Not reveal phase';
    pub const REVEAL_ONGOING: felt252 = 'Reveal phase is still on going';
    pub const NO_WINNER: felt252 = 'No winner';
    pub const WINNER_ALREADY_REWARDED: felt252 = 'Winner already been rewarded';
}

#[starknet::contract]
mod ZkAuction {
    use super::IGroth16VerifierBN254DispatcherTrait;
    use super::{IGroth16VerifierBN254Dispatcher};
    use core::hash::HashStateExTrait;
    use core::hash::HashStateTrait;
    use starknet::storage::StoragePathEntry;
    use starknet::{ContractAddress, get_caller_address, get_block_timestamp};
    use core::poseidon::PoseidonTrait;
    use starknet::storage::{Map, StoragePointerReadAccess, StoragePointerWriteAccess};
    use openzeppelin_token::erc721::{ERC721Component, ERC721HooksEmptyImpl};
    use openzeppelin_introspection::src5::SRC5Component;

    component!(path: ERC721Component, storage: erc721, event: ERC721Event);
    component!(path: SRC5Component, storage: src5, event: SRC5Event);

    #[abi(embed_v0)]
    impl ERC721MixinImpl = ERC721Component::ERC721MixinImpl<ContractState>;

    impl ERC721InternalImpl = ERC721Component::InternalImpl<ContractState>;

    #[storage]
    struct Storage {
        #[substorage(v0)]
        erc721: ERC721Component::Storage,
        erc721_total_supply: u256,
        #[substorage(v0)]
        src5: SRC5Component::Storage,

        verifier_contract: IGroth16VerifierBN254Dispatcher,

        min_bid: u32,
        max_bid: u32,
        commitments: Map<ContractAddress, felt252>, // Maps user addresses to their commitments
        bid_finishes_at: u64,
        reveal_finishes_at: u64,
        highest_bid: u32,
        winner: Option<ContractAddress>,
        winner_already_rewarded: bool,
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    enum Event {
        #[flat]
        ERC721Event: ERC721Component::Event,
        #[flat]
        SRC5Event: SRC5Component::Event
    }

    #[constructor]
    fn constructor(
        ref self: ContractState,
        erc721_name: ByteArray,
        erc721_symbol: ByteArray,
        erc721_base_uri: ByteArray,
        verifier_contract: IGroth16VerifierBN254Dispatcher,
        min_bid: u32,
        max_bid: u32,
        bid_duration: u64,
        reveal_duration: u64,
    ) {
        self.erc721.initializer(erc721_name, erc721_symbol, erc721_base_uri);

        assert(min_bid < max_bid, super::errors::BID_ORDER);

        self.min_bid.write(min_bid);
        self.max_bid.write(max_bid);

        assert(bid_duration > 0, super::errors::NULL_DURATION);

        let block_timestamp = get_block_timestamp();
        self.bid_finishes_at.write(block_timestamp + bid_duration);

        self.reveal_finishes_at.write(self.bid_finishes_at.read() + reveal_duration);
    }

    #[abi(embed_v0)]
    impl ZkAuctionImpl of super::IZkAuction<ContractState> {
        // TODO: maybe take hash from proof public outputs instead of as another parameter
        fn commit_bid(ref self: ContractState, bid_proof: Span<felt252>, bid_hash: felt252) {
            self.make_sure_bid_phase_is_ongoing();

            // call deployed verifier contract to verify the proof to make sure the bid is within range
            let proof_public_inputs = self.verifier_contract.read().verify_groth16_proof_bn254(bid_proof);
            assert(proof_public_inputs.is_some() && proof_public_inputs.unwrap().len() == 2, super::errors::PROOF_NOT_VERIFIED);

            // If verification passed, store the commitment
            let sender = get_caller_address();
            self.commitments.entry(sender).write(bid_hash);

            // TODO: transfer the minimal bid amount from the bidder to the contract
            // note: could instead transfer the maximal bid amount: more security/incentive to participate but requires more funds
            // or average between the min and max bid ? --> maybe avoid staking 0 tokens when min bid is 0

        }

        fn reveal_bid(ref self: ContractState, bid_amount: u32, user_salt: felt252) {
            self.make_sure_reveal_phase_is_ongoing();

            // Fetch the user's commitment
            let sender = get_caller_address();
            let stored_commitment = self.commitments.entry(sender).read();

            // Compute the commitment from the revealed bid and salt
            let computed_commitment = PoseidonTrait::new().update_with((bid_amount, user_salt)).finalize();

            // Verify the computed commitment matches the stored commitment
            assert(stored_commitment == computed_commitment, super::errors::WRONG_COMMITMENT);

            // Safe check to make sure the bid is within the valid range (the proof should already have made sure of that)
            let min_bid = self.min_bid.read();
            let max_bid = self.max_bid.read();
            assert(bid_amount >= min_bid && bid_amount <= max_bid, super::errors::BID_OUT_OF_RANGE);

            // Update the highest bid and winner if this bid is the highest
            let current_highest_bid = self.highest_bid.read();
            if bid_amount > current_highest_bid {
                self.highest_bid.write(bid_amount);
                self.winner.write(Option::Some(sender));
            }
        }

        fn reward_winner(ref self: ContractState) -> (Option<ContractAddress>, u32) {
            self.make_sure_reveal_phase_is_over();
            self.make_sure_winner_rewarded_only_once();

            // make sure we do have a winner
            let winner = self.winner.read();
            assert(winner.is_some(), super::errors::NO_WINNER);

            // TODO: transfer funds from winner to contract - already staked insurance (during bid phase)

            // mint an NFT to reward the winner
            let total_supply = self.erc721_total_supply.read();
            self.erc721.safe_mint(winner.unwrap(), total_supply, array![].span());
            self.erc721_total_supply.write(total_supply + 1);

            // TODO: release all staked funds to participants

            let highest_bid = self.highest_bid.read();
            (winner, highest_bid)
        }

        fn withdraw_funds(ref self: ContractState) {
            // TODO: Allow bid participants that have not revealed their bid to withdraw it
            // only after a long period of time to mitigate/avoid this behaviour and encourage them to reveal their bid!
        }
    }

    #[generate_trait]
    impl InternalImpl of InternalTrait {
        fn make_sure_bid_phase_is_ongoing(self: @ContractState) {
            let current_block_timestamp = get_block_timestamp();
            assert(current_block_timestamp < self.bid_finishes_at.read(), super::errors::AUCTION_OVER);
        }

        fn make_sure_reveal_phase_is_ongoing(self: @ContractState) {
            let current_block_timestamp = get_block_timestamp();
            assert(
                current_block_timestamp >= self.bid_finishes_at.read()
                && current_block_timestamp < self.reveal_finishes_at.read(),
                super::errors::NOT_REVEAL_PHASE
            );
        }

        fn make_sure_reveal_phase_is_over(self: @ContractState) {
            let current_block_timestamp = get_block_timestamp();
            assert(current_block_timestamp >= self.reveal_finishes_at.read(), super::errors::REVEAL_ONGOING);
        }

        fn make_sure_winner_rewarded_only_once(ref self: ContractState) {
            assert(!self.winner_already_rewarded.read(), super::errors::WINNER_ALREADY_REWARDED);
            self.winner_already_rewarded.write(true);
        }
    }
}
