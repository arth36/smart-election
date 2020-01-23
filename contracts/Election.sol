pragma solidity ^0.5.16;

contract Election {

    // Model a Candidate ( Describe how Candidate looks like )
    struct Candidate {
    
        uint id;
        string name;
        uint voteCount;
    
    }

    // Store Candidates
    // Fetch Candidate ( From Storage )
    mapping(uint => Candidate) public candidates;

    // Store Candidates Count
    uint public candidatesCount;

    // Constructor

    constructor() public {
        // this constructor will run when we deploy our contract to the blockchain.
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string memory _name) private {

        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);

    }

}
