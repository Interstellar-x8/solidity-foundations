pragma solidity >=0.7.0 < 0.9.0;

// Mapping is a reference type as arrays and structs. Following is the syntax to declare a mapping type.

contract learnMapping {
    // key and value - key can be a string, uint, or boolean - value can be anything.
    
    mapping(address => uint) public myMap; 

    function getAddress(address _addr) public view returns(uint) {
        return myMap[_addr];
    }

    function setAddress(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    function removeAddress(address _addr) public {
        delete myMap[_addr];
    }

    mapping(uint => Movie) movie;

    struct Movie {
        string title;
        string director;
    }

    function addMovie(uint id, string memory title, string memory director) public {
        movie[id] = Movie(title, director); 
    }
}