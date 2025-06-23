// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
Observe: The contract in Solidity is similar to a Class in C++ (a blueprint for an object).

Constructor: A special function declared with the keyword: "constructor" which will be executed once per contract and is invoked when a contract is created.

Functions: Functions per contract which can modify the state variables to alter the state of a contract.

Recall Visibility Scope Keywords:

- External: External functions are meant to be called by other contracts. They cannot be used for internal calls.
To call external function within contract: this.function_name() call is required.
State varibales cannot be marked as external.

- Public: Public functions/variables can be used both externally and internally.

- Internal: Internal functions/variables can only be used internally or by derived contracts.

- Private: Private functions/variables can only be used internally and not even by derived contracts.

*/

contract A {
    uint public data = 10; // state variable

    // pure
    function x() external pure returns(uint) {
        uint newData = 25;
        return newData;
    }

    // view
    function l() public view returns(uint) {
        uint newData = data - 3;
        return newData;
    }

    function y() public view returns (uint) {
        return data;
    }

}

contract B {
    A a = new A();

    function f() public view returns (uint) {
        return a.l();
    }
}