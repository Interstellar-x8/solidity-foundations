// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 < 0.9.0;

contract operators {
    function addCalculator() public view returns(uint) {
        uint a = 5; 
        uint b = 6; 
        uint result = a + b;
        return result; 
    }


// Remainder Operator = Modulus: %. Finds the remainder.
// Example ->
// 1. Divide the dividend to the divisor. 12/23 
// 2. Disregard the fraction. Focus on the quotient. q = 0
// 3. Multiply the result by the divisor. 0 * 23 = 0
// 4. Subtract the new result from the dividend. 12 - 0 = 12. 

    function modCalculator() public view returns(uint) {
        uint a = 12;
        uint b = 23;
        uint result = a % b; 
        return result;
    }

// ++ -- 
// ++ increments 1
// -- decrements 1

}

// Exercise 1: Only run the function compare so that a is equal to or less than b
// Otherwise submit the message - This comparison is false.
contract comparisonOperators {
    uint a = 1228;
    uint b = 6;
    function compare() public view {
        // method to check if something is true or false.
        require(a <= b, 'This comparison is false!');
    }
}

// Logical Operators: && (Logical AND), || (Logical OR), ! (Logical NOT)
// Bitwise Operators: & (Bitwise AND), | (Bitwise OR), ^ (Bitwise XOR)


contract logicalOperators {
    uint a = 4;
    uint b = 8;

    function logic() public view returns(uint) {
        uint result = 0;
        if(a < b && a == 4) {
            result = a + b;
    }
        return result;
    }
}

// Exercise 2: Create a function which will multiply a by b and divide the result by b.
// Only return the multiplication of the function if b is greater than a AND does not equal b. 
// Initialize a to 18 and b to 28. 

contract exerciseTwo {
    uint a = 18;
    uint b = 28;

    function Logic() public view returns(uint) {
        uint result = 0;
        if(b > a && a != b) {
            result = a * b;
        }
        return result;
        }
}

// Exercise 3: 1. Initialize 3 state variables a, b, f - DONE
// Create a function called finalize that is public and viewable which returns a local variable d - DONE
// Initialize d to 23 - DONE  
// return d in short handed assignment form to multiply itself by itself and then subtracted by b. - DONE *=
// Make the function conditional so that it would only return the multiplication if a is greater than or equal to b and b is less than f.
// Otherwise d should return 23.

contract finalExercise {
    uint a = 300;
    uint b = 12;
    uint f = 47;

    function finalize() public view returns(uint) {
       uint d = 23;
       // short hand assignment
        if(a > b && b < f) {
            d *= d; 
            return d - b;
        } else {
            return d;
        }
    } 
}
