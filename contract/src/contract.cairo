use starknet::ContractAddress;

#[starknet::interface]
pub trait IZkAuction<TContractState> {
    fn commit_bid(ref self: TContractState, bid_proof: felt252, bid_hash: felt252);
    fn reveal_bid(ref self: TContractState, bid_amount: u32, user_salt: felt252);
    fn get_winner(self: @TContractState) -> (Option<ContractAddress>, u32);
}

mod errors {
    pub const BID_ORDER: felt252 = 'Max bid must be > Min bid';
    pub const BID_OUT_OF_RANGE: felt252 = 'Bid out of range';
    pub const NULL_DURATION: felt252 = 'Duration must be > 0';
    pub const AUCTION_OVER: felt252 = 'Auction is over';
    pub const AUCTION_ONGOING: felt252 = 'Auction is still on going';
    pub const WRONG_COMMITMENT: felt252 = 'Bid & salt do not exist';
}

#[starknet::contract]
mod ZkAuction {
    use core::hash::HashStateExTrait;
    use core::hash::HashStateTrait;
    use starknet::storage::StoragePathEntry;
    use starknet::{ContractAddress, get_caller_address, get_block_timestamp};
    use core::poseidon::PoseidonTrait;
    use starknet::storage::{Map, StoragePointerReadAccess, StoragePointerWriteAccess};

    #[storage]
    struct Storage {
        min_bid: u32,
        max_bid: u32,
        commitments: Map<ContractAddress, felt252>, // Maps user addresses to their commitments
        highest_bid: u32,
        winner: Option<ContractAddress>,
        finish_at: u64,
    }

    #[constructor]
    fn constructor(ref self: ContractState, min_bid: u32, max_bid: u32, duration: u64) {
        assert(min_bid < max_bid, super::errors::BID_ORDER);

        self.min_bid.write(min_bid);
        self.max_bid.write(max_bid);

        assert(duration > 0, super::errors::NULL_DURATION);

        let block_timestamp = get_block_timestamp();
        self.finish_at.write(block_timestamp + duration);
    }

    #[abi(embed_v0)]
    impl ZkAuctionImpl of super::IZkAuction<ContractState> {
        fn commit_bid(ref self: ContractState, bid_proof: felt252, bid_hash: felt252) {
            // Make sure still in time
            let current_block_timestamp = get_block_timestamp();
            assert(current_block_timestamp < self.finish_at.read(), super::errors::AUCTION_OVER);

            // TODO: call deployed verifier contract to verify the proof to make sure it follows set rules


            // If verification passed, store the commitment
            let sender = get_caller_address();
            self.commitments.entry(sender).write(bid_hash);
        }

        fn reveal_bid(ref self: ContractState, bid_amount: u32, user_salt: felt252) {
            self.make_sure_auction_is_over();

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

        fn get_winner(self: @ContractState) -> (Option<ContractAddress>, u32) {
            self.make_sure_auction_is_over();

            let winner = self.winner.read();
            let highest_bid = self.highest_bid.read();

            (winner, highest_bid)
        }
    }

    #[generate_trait]
    impl InternalImpl of InternalTrait {
        // Make sure still in time
        fn make_sure_auction_is_over(self: @ContractState) {
            let current_block_timestamp = get_block_timestamp();
            assert(current_block_timestamp >= self.finish_at.read(), super::errors::AUCTION_ONGOING);
        }
    }
}