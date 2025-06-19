// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

// A "For" Loop is used to repeat a specific block of code a KNOWN number of times.
// For example, if we want to check the grade of every student in that class, we loop from 1 to that number.

contract loop {

    // a list of numbers ranging from 1 to 10
    uint [] public numbersList = [1,2,3,4,5,6,7,8,9,10];

    function checkMultiples(uint _number) public view returns (uint) {
        uint count = 0;
        // i is the index of each iteration
        // 1. initialize start of loop
        // 2. determine the length of loop.
        // 3. direct the index after each turn.
        for(uint i=1; i < numbersList.length; i++) {
            // logic for the loop
            if(checkMultipleValidity(numbersList[i], _number)) {
                count ++;
            }
        }
        return count;
    }


    function checkMultipleValidity(uint _num, uint _nums) public view returns(bool) {
        // modulo operator =  %
        if(_num % _nums == 0) {
            return true;
        } else {
            return false;
        }
    }
}

/* Exercise: Create a contract myLoopingPracticesContract and place all the following code within:

1. Create a list that ranges from 1 to 20 called longList 
2. Create a list called numbersList of the following numbers: 1, 4, 34, 56
3. Create a function that loops through numbersList and returns a true value if the number
that the user inputs exists in the list, otherwise it should return false.
4. Create a function that loops through and returns how many even numbers there are in the long list

*/

contract myLoopingPracticeContract {
    // arrays
    uint [] longList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    uint [] numbersList = [1,4,34,56];

    function numbersListLoop(uint userNumber) public view returns(bool) {
            bool numberExists = false;
        for(uint i = 0; i < numbersList.length; i++) {
            if(numbersList[i] == userNumber) {
                numberExists = true;
            }
        }
        return numberExists;
    }


// always going to be an even number % 2 == 0

function evenNumbersLoop() public view returns(uint) {
    uint count = 0;
    for(uint i = 0; i < longList.length; i ++) {
        if(longList[i] % 2==0) {
            count ++;
        }
    }
    return count;
 }
}
