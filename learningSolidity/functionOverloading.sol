// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/* 
Function Overloading: 

You can have multiple definitions for the same function name in the same scope.
The definition of the function must differ from each other by the types and/or the number of arguments in the argument list.
You cannot overload function declarations that differ only be return.

*/

contract FunctionOverloading {
    function x(bool lightSwitch) public {

    }

    function x(uint wallet) public {

    }

    function getSum(uint a, uint b) public pure returns(uint) {
        return a + b;
    }

    function getSum(uint a, uint b, uint c) public pure returns(uint) {
        return a + b + c;
    }

    function getSumTwoArgs() public view returns(uint) {
        return getSum(2,3);
    }

    function getSumThreeArgs() public view returns(uint) {
        return getSum(4,5,6);
    }



}