pragma solidity >=0.7.0 < 0.9.0;

contract learnStrings {
    // declare the data type, the name, value
    string greetings = 'Hello!'; // 'Hello!' is the string literal. geetings is the name of the string.
    // watch out for weird characters.
    // Use / to skip a character. Example: "You\'re"
    // \n - skips a line.

    function sayHello() public view returns(string memory) { // memory keyword = tempoary place to store data. much like RAM.
        return greetings;
    }


    function changeGreeting(string memory _change) public {
        greetings = _change;
    }

    // strings in solidity are too expensive computationally to get length.
    function getChar() public view returns(uint) {
        // return greetings.length;
        // convert string to bytes to return the length.
        // bytes are the basic unit of measurement in computer processing. 
        bytes memory stringToBytes = bytes(greetings);
        return stringToBytes.length;
    }
}
