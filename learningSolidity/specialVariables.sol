// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

// Special Variables (global variables) are globally available variables and provides information about the blockchain.
// Ex: msg.sender: sender of the message (current call), msg.value (uint): number of wei sent with the message.

contract LedgerBalance {
    // create a map of wallets with amounts.
    // set up a function that can update the amount of the person calling the contract - current address

    mapping(address => uint) balance;

    function updatesBalance(uint newBalance) public {
        balance[msg.sender] = newBalance;
    } 

}

contract Updated {

    function updatesBalance() public {
        LedgerBalance ledgerBalance = new LedgerBalance();
        // Ex: 30 is the newBalance.
        ledgerBalance.updatesBalance(30);
    }
}

// Other Global Variables Examples:

contract SimpleStorage {
    uint storedData;

    function set(uint x) public {
        // storedData = x;
        storedData = block.difficulty;
    }

    function get() public view returns (uint) {
        return storedData;
    }

        // Ex: another global variable.
        // storedData = block.timestamp;

}