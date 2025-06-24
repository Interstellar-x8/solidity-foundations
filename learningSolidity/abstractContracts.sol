// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

/*
Abstract Contracts is one which contains at least one function without any implementation.
Such a contract is used as a base contract.
Generally an abstract contract contains both implemented as well as abstract functions.
Derived contracts will implement the abstract function and use the existing functions as and when required.

*/

// base contract
contract X {
    function y() public view virtual returns(string memory) {

    } 
}

// derived contract
contract Z is X {
    function y() public override view returns(string memory) {
        return 'Hello!';
    } 
}

// base contract
contract Member {
    string name;
    uint age = 38;
    function setName() public virtual returns(string memory) {}

    function returnAge() public view returns(uint) {
        return age;
    }
}

// dervied contract

contract Teacher is Member {
    function setName() public view override returns(string memory) {
        return 'Latte';
    }
}

// base contract
contract Calculator {
    function getResult() public view virtual returns(uint) {}
}

// derived contract
contract Test is Calculator {
    function getResult() public override view virtual returns(uint) {
        uint a = 1;
        uint b = 2;
        uint result ;
        result = a + b;
        return result;
    }
}