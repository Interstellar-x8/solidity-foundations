pragma solidity >= 0.7.0 < 0.9.0;

// View functions ensure that they will not modify the state (return values).
// Pure functions ensure that they not read or modify the state (return calculations).

contract MyContract {

uint value;


// getValue is a read only functions.
function getValue() external view returns(uint) {
    // eth call
    return value;
}

function getNewValue() external pure returns(uint) {
    return 3 + 3;
}


// setValue modifies the state value.
function setValue(uint _value) external {
    value = _value;
}

function multiply() external pure returns(uint) {
    return 3 * 7;
}

function valuePlusThree() external  view returns(uint) {
    value + 3;
}


}