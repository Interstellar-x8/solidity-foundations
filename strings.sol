pragma solidity >=0.7.0 < 0.9.0;

contract learnStrings {
    // declare the data type, the name, value
    string greetings = 'Hello!'; // 'Hello!' is the string literal. geetings is the name of the string.

    function sayHello() public view returns(string memory) { // memory keyword = tempoary place to store data. much like RAM.
        return greetings;
    }



}
