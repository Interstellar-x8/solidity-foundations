// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
Interfaces:

Interfaces are similar to abstract constracts and are created using interface keyword.

Interfaces cannot have any function with implementation.

Functions of an interface can be only of type external.

Interfaces cannot have a constructor.

Interfaces cannot have state variables.

Interfaces can have an enum, structs, which can be accessed using interface name dot notation.

*/

contract Counter {
    uint public count;

    function increment() external {
        count += 1;
    }
}

interface ICounter {
    function count() external view returns(uint);
    function increment() external;
}

contract MyContract {
    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
    }
    function getCount(address _counter) external view returns(uint) {
        return ICounter(_counter).count();
    }
}

