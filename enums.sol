pragma solidity >= 0.7.0 < 0.9.0;

// Enums restrict a variable to have one of only a few perdefined values.
// The values in this enumerated list are called enums.

// With the use of enums, it is possible to reduce the number of bugs in your code.

contract learnEnums {
    enum frenchFriesSize {LARGE, MEDIUM, SMALL}
    frenchFriesSize choice;
    frenchFriesSize constant defaultChoice = frenchFriesSize.MEDIUM;

    function setSmall() public {
        choice = frenchFriesSize.SMALL;
    }

    function getChoice() public view returns(frenchFriesSize) {
        return choice;
    }

    function getDefaultChoice() public view returns(uint) {
        return uint(defaultChoice);
    }
}