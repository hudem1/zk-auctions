# Zk-auctions

## Core Idea

The goal is to allow users to participate in auctions while keeping their bid amounts private during the bidding phase. Only the winning bid is revealed at the end, ensuring fairness without sacrificing user privacy.

---

## Workflow

### 1. Auction Setup
- A Starknet smart contract is deployed to manage the auction.
- The auction has predefined rules:
  - Start and end times for the bidding phase.
  - Constraints (ex: minimum bid, maximum bid, or bid increment steps).
  - A unique auction item (ex: an NFT).

---

### 2. Commit Phase (Private Bidding)
- **Users generate zk-proofs**:
  - Each user computes a commitment for their bid amount (`commitment = hash(bid_amount + secret_salt)`).
  - They use zk-SNARKs to prove that their bid:
    - Meets the auction constraints (ie, falls within the allowed range).
    - Is associated with a unique secret salt to prevent replay attacks.
  - No actual bid amount is revealed during this phase; only the commitment and proof are submitted.
- The commitment and zk-proof are sent to the Starknet contract.

---

### 3. Reveal Phase
- After the commit phase ends, users reveal their bids:
  - They submit their actual `bid_amount` and `secret_salt` to the Starknet contract.
  - The contract validates the reveal by:
    - Recomputing the commitment (`hash(bid_amount + secret_salt)`) and comparing it with the stored commitment.
    - Ensuring the bid still meets the auction rules.

---

### 4. Winner Determination
- The smart contract determines the highest valid bid and declares the winner.
- The winner pays their bid amount, and the auction item is transferred to them.

---

## Benefits

- **Privacy**: Bids remain private until revealed.
- **Fairness**: The auction process ensures no one can manipulate the outcome.
- **Transparency**: All actions are logged on-chain, but sensitive information (bid amounts) is kept private until necessary.

---

## Example Use Cases

- **NFT Auctions**:
  - Auction digital art while keeping bids private to avoid price manipulation.
- **DAO Governance**:
  - Use auctions to allocate resources or tokens to the highest bidder without revealing their strategy.

---

## Frontend

### Idea:
- Create UI for users to participate to the auction by making their bids.
- Simplify the UI/UX for non-technical users, leveraging account abstraction to make wallets user-friendly.

---

## Limitations / Ways of Improvement

### Reveal Phase Coordination:
- Have to ensure users participate in the reveal phase; otherwise, their bids are forfeited. Could improve this by trying to automatize this & and ensure users actually have the funds they bid (lock value during bidding phase instead of having users to actively interact once again with the smart contract during the reveal phase)


## Major Issues Encountered

### Zk-SNARKs Generation & Verification:
- Lots of difficulties generating and verifying zk-proofs:
    - First, tried with stone prover and integrity verifier locally and then deployed, but had major issues when verifying on deployed verifier (errors with no visible way of debugging and very little documentation)
    - Then, tried exploring zk-SNARKs instead of zk-STARKs using snarkjs & groth16. Tried following Garaga tutorial but encountered issues with little documentation, and then found another tutorial explaining more in depths zk-SNARKs, but did not have time to finish it.
    - In short, I lacked of understanding and time. I will continue this project in my free time to finish it.

### Not yet functional

- As a result to the encountered issues, the project is not functional yet. I will make it functional in the near future. Stay tuned !