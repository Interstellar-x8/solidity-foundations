// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;


contract D {

}

contract E {
    
}


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