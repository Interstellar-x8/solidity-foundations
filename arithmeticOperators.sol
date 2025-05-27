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


}



