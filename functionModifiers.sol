pragma solidity >=0.7.0 <0.9.0;

// function modifiers are used to modify the behaviors of a function.
// function modifiers are customizable modifications for functions.

contract Owner {

    address owner;
    // when we deploy this contract, we want to set the address to the owner (msg.sender)
    constructor() public {
        owner = msg.sender;
    }

// function modifiers

    modifier onlyOwner {
    // customizabe logic to modify our functions.
    require(msg.sender == owner);
    _; 
    // the underscore continues with the function.
    }

}


// is = keyword grabbing inheritance from another contract - Owner.
contract Register is Owner {
    mapping (address => bool) registeredAddresses;
    uint price;

    constructor(uint initialPrice) public { 
        price = initialPrice; 
        }

// function register will set msg.sender (current caller) to true.
    function register() public payable {
        registeredAddresses[msg.sender] = true;
    }

// onlyOwner is our function modifier that requires only the owner to be able to change the price.
    function changePrice(uint _price) public onlyOwner {
        price = _price;
    }


}