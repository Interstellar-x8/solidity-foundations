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

}

    
