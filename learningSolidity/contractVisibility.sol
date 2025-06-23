// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

// Private = You can call the function inside the contract.
// Internal = Called only within the contract OR other contracts that inherit the smart contract.
// Internal is slightly less restrictive than public.
// External = You can call the function outside the contract not from other functions.
// Public = You can call the function from outside the smart contract as well as inside the contract.
// Rule of Thumb = Give the minimum amount of privilege to any entity. 
// 1. Private, 2. Internal, 3. External, 4. Public.

/*
- External: External functions are meant to be called by other contracts. They cannot be used for internal calls.
To call external function within contract: this.function_name() call is required.
State varibales cannot be marked as external.

- Public: Public functions/variables can be used both externally and internally.

- Internal: Internal functions/variables can only be used internally or by derived contracts.

- Private: Private functions/variables can only be used internally and not even by derived contracts.

*/

contract C {
    uint private data;
    uint public info;

    constructor() {
        info = 10;
    } 
    function increment(uint a) private pure returns(uint) {return a + 1;}  
    function updateData(uint a) public {data = a;}
    function getData() view public returns(uint) {return data;}
    function compute(uint a, uint b) pure internal returns(uint) {return a + b;}
}

contract D {
    C c = new C();
    function readInfo() public view returns(uint) {
        return c.info();
    }
}

contract E is C {

    uint private result;
    C private c;

    constructor() {
        c = new C();
    }

    function getComputedResult() public {
        result = compute(23, 5);
    }

    function getResult() public view returns(uint) {
        return result;
    }

    function getNewInfo() public view returns(uint){
        return c.info();
    }

}