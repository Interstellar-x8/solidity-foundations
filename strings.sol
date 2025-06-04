pragma solidity >=0.7.0 < 0.9.0;

contract learnStrings {
    // declare the data type, the name, value
    string greetings = 'Hello!'; // 'Hello!' is the string literal. geetings is the name of the string.
    // watch out for weird characters.
    // Use / to skip a character. Example: "You\'re"
    // \n - skips a line.

    function sayHello() public view returns(string memory) { // memory keyword = temporary place to store data. much like RAM.
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

    // Exercise:
    // 1. create a string called favoriteColor.
    // 2. set the favorite color of the string favoriteColor to blue.
    // 3. create a function which returns the string literal of favoriteColor.
    // 4. create a function which changes the favoriteColor string literal from blue to your favorite color. 
    // 5. create a function which can return how many characters thare are in the string favoriteColor.

    string favoriteColor = 'blue';
    function myFavoriteColor() public view returns(string memory) {
        return favoriteColor;
    }

    function changeFavoriteColor(string memory _changes) public {
        favoriteColor = _changes;
    }

    function getCharLength() public view returns(uint) {
        bytes memory stringsToColorBytes = bytes(favoriteColor);
        return stringsToColorBytes.length;
    }


}
