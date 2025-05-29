pragma solidity >=0.7.0 < 0.9.0;

// A "For" Loop is used to repeat a specific block of code a KNOWN number of times.
// For example, if we want to check the grade of every student in that class, we loop from 1 to that number.

contract loop {
    function checkMultiples(uint _num, uint _nums) public view returns(bool) {
        // modulo operator =  %
        if(_num % _nums == 0) {
            return true;
        } else {
            return false;
        }
    }
}