// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

/*
Inheritance is a way to extend functionality of a contract.
Solidity supports both single as well as multiple inheritance.

Classes can inherit and so can contracts!


*/

contract A {
    uint innerValue = 100;

    // pure = read-only
    function innerAddTen(uint val) public pure returns(uint) {
        return val + 10;
    }
}

contract B is A {
    function outerAddTen(uint val) public pure returns(uint) {
        return A.innerAddTen(val);
    }

    function getInnerValue() public view returns(uint) {
        return A.innerValue;
    }
}