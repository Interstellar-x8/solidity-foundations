pragma solidity >= 0.5.0 < 0.9.0;

// Variable Scope = Functions & Variables.

// Private = You can call the function inside the contract.
// Internal = Called only within the contract OR other contracts that inherit the smart contract.
// Internal is slightly less restrictive than public.
// External = You can call the function outside the contract not from other functions.
// Public = You can call the function from outside the smart contract as well as inside the contract.
// Rule of Thumb = Give the minimum amount of privilege to any entity. 
// 1. Private, 2. Internal, 3. External, 4. Public.

contract C {
    uint public data = 10; // state variable

    function x() public view returns(uint) {
        // modify fuction x so that you return 30 for data without changing the data of the state variable.
        uint newData = 25;
        return newData;
    }

    function y() public view returns (uint) {
        return x();
    }
}

