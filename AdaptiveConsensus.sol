// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract AdaptiveConsensus {
    enum ConsensusType { PoW, PoS, Hybrid, DPoS, PBFT, PoA  }
    ConsensusType public currentConsensus;

    event ConsensusChanged(ConsensusType newConsensus);

    constructor() {
        currentConsensus = ConsensusType.PoW; // Default to PoW
    }

    function switchConsensus(ConsensusType _newConsensus) public {
        currentConsensus = _newConsensus;
        emit ConsensusChanged(_newConsensus);
    }
}
