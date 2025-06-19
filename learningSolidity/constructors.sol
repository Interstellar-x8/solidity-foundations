// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

/* 

Constructor is a special function using the constructor keyword.

It initializes state variables of a contract.

1. A contract can only have one constructor.
2. A constructor code is executed once when a contract is created and it is used to initialize contract state.
3. After a constructor code is executed, the final cable is deployed to blockhain.
4. This code includes public functions and code reachable through public functions.
5. A constructor can be either public or internal.
6. An internal constructor marks the contract as abstract.
7. In case of no constructor defined, a default constructor is present in the contract.

*/

contract member {
    string name;
    uint age; 

    // initialize name and age upon deployment 

    constructor(string memory _name, uint _age) public {
        name = _name;
        age = _age;
    }
}

//; is an option to call the constructor
contract teacher is member // ('Garfield', 17) 
{

    constructor(string memory n, uint a) member(n, a) public {}

    function getName() public view returns(string memory) {
        return name;
    }
}

/* Exercise:

1. Create a contract called Base which stores fully accessible (inside and outside) integer data upon deployment
2. Create a contract called Dervied which derives data from Base and runs a function that always outputs the data to the number 5

*/

contract base {
    uint data;
    constructor(uint _data) public {
        data = _data;
    }
}

contract derived is base (5)
{
    function getData() public view returns(uint) {
        return data;
    }
}