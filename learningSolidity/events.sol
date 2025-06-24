// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

/*
Abstraction - Decentralized Exchange: On a smart contract, traders can trade tokens - from the smart contract emit an event so they can get data (web front mobile)

*/

contract LearnEvents {
    // 1. declare an event
    // 2. emit an event
    event NewTrade(
        uint indexed date,
        address from,
        address to,
        uint amount);

    function trade(address to, uint amount) external {
        // outside consumer can see the event through web3js
        // block.timestamp is a global variable that gives the current timestamp
        emit NewTrade(block.timestamp, msg.sender, to, amount);
        } 


}