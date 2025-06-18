// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

/* 
Destructuring Assignments and Solidity Tricks

Solidity functions can return multiple variables of different types.

If you only want to keep one variable, then you can declare a variable and then use commas.
*/

contract DeconstructingFunctions {

    uint public changeValue;
    string public tom = 'Hello';

    function f() public pure returns(uint, bool, string memory) {
        return (3, true, 'Goodbye!');
    }
}


