pragma solidity ^0.5.16;

contract Election {
    // Store Candidate
    // Read Candidate
    // Constructor

    string public candidate;

    constructor() public {
        // this constructor will run when we deploy our contract to the blockchain.
        candidate = "Candidate 1";

    }

}
