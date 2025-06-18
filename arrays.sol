// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract learnArrays {
    // empty array 
    uint[] public myArray;
    uint[] public myArray2;

    // fixed size array
    uint[200] public myFixedArray;

    // the push() method adds one or more elements to the end of an array and returns the new length of the array.

    function push(uint number) public {
        myArray.push(number);
    }

    // the pop() method removes the alst element from an array and returns the value to the caller.

    function pop() public {
        myArray.pop();
    }


    // length is a string property that is used to determine the length of the string.

    function getLength() public view returns(uint) {
        return myArray.length;
    }



    function remove(uint i) public {
        // delete items from myArray example. note - we're not changing the length, just the value.
        // i = 0
        delete myArray[i]; 
    }

    /* Exercise:
        1. Create an empty array called changeArray
        2. Create a function called removeElement which sets the index argument of the array to the last element in the array
        3. Remove the last index from that function with the pop method
        4. Create a function called test which pushes 1 2 3 4 into change array
        5. Remove the element 2 from the array when the contract is called
    */ 

    uint [] public changeArray;

    function removeElement(uint i) public {
        changeArray[i] = changeArray[changeArray.length -1];
        changeArray.pop();
    }

    function test() public {
        for(uint i = 1; i <= 4; i++) {
            changeArray.push(i);
        }
    }

    function getChangeArray() public view returns(uint[] memory) {
        return changeArray;
    }

}

    
