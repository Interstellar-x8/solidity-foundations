// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
A cryptographic hash function (CHF) is a mathematical algortithm that maps data of arbitrary size (often called the "message") to a bit array
of a fixed size (the "hash" value, or "message digest"). It is a one-way function, that is, a function which is practically infeasible to invert or reverse
the computation.

keccak256(bytes memory) returns (bytes32) - computes the Keccak-256 hash of the input. 

sha256(bytes memory) returns (bytes32) - computes the SHA-256 hash of the input.

ripemd160(bytes memory) returns (bytes20) - compute RIPEMD-160 hash of the input.
*/

// Oracle dynamic feeds are basically databases that are feeding live information.

contract Oracle {
    address admin; 
    uint public rand;

    constructor() public {
        admin = msg.sender;
    }

    function feedRand(uint _rand) external {
        require(msg.sender == admin);
        rand = _rand;
    }
}

contract GenerateRandomNumber {

    Oracle oracle;

    constructor(address oracleAddress) {
        oracle = Oracle(oracleAddress);
    }

    // modulo (%) - so by computing against the remainder we will be able to produce a random number within a range.

    function randMod(uint range) external view returns(uint) {
        // grab information from the blockchain randomly to generate random numbers - we need something dynamically changing.
        // abi.encodePacked concatenates arguments nicely.
        return uint(keccak256(abi.encodePacked(oracle.rand, block.timestamp, block.difficulty, msg.sender))) % range; 
    }

}
