pragma circom 2.0.0;

include "../../node_modules/circomlib/circuits/comparators.circom";

template BidRangeCheck() {
  // Public inputs
  signal input minBid;
  signal input maxBid;
  // Private input
  signal input bid;

  // make sure max bid is greater than min bid
  component boundsComparison = LessEqThan(16);
  boundsComparison.in[0] <== minBid;
  boundsComparison.in[1] <== maxBid;
  boundsComparison.out === 1;

  // Make sure bid is greater than or equal to the minimum allowed bid
  component geq = GreaterEqThan(16);
  geq.in[0] <== bid;
  geq.in[1] <== minBid;
  geq.out === 1;

  // Make sure bid is lower than or equal to the maximum allowed bid
  component leq = LessEqThan(16);
  leq.in[0] <== bid;
  leq.in[1] <== maxBid;
  leq.out === 1;
}

// note: 2 proofs generated using the same inputs will still end up different!
component main {public [minBid, maxBid]} = BidRangeCheck();
