// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
Libraries are similar to contracts but are mainly intended for reuse.

A library contains functions which other contracts can call.
A library cannot be destroyed as it is assumed stateless.
A library cannot have state variables.
A library cannot inherit any element.
A library cannot be inherited.

*/

library Search {
    function indexOf(uint[] storage self, uint value) public view returns(uint) {
        for(uint i=0; i<self.length; i++) {
            if(self[i] == value) return i;
        }
    }
}

contract Test {
    uint[] data;
    constructor() public {
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }

    function isValuePresent(uint val) external view returns(uint) {
        uint value = val;
        uint index = Search.indexOf(data, value);
        return index;
    }
}