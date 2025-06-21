pragma solidity >=0.7.0 < 0.9.0;

/* 
Cybersecurity In Solidity - against bad actors, accidental occurrences. 
Withdrawal pattern ensures that direct transfer call is not made which poses a security threats.
Transfers are atomic (meaning all or nothing).
*/

/*
contract test {

modifier onlyOwner {
    require(true);
    _;
}

function returnFunds() public onlyOwner returns(bool success) {
    for(uint i =0; funders.length; i++) {
        funders[i].transfer(contributedAmount);
    }
    return true;
  }

function returnFunds() public onlyOwner returns(bool success) {
    latte.transfer(contributedAmount);
    garfield.transfer(contributedAmount);
    return true;
}

fallback() public {}

}
*/

contract Victim {
    function isItAContract() public view returns(bool) {
        uint32 size;
        address a = msg.sender;
        // inline assembly accesses EVM at a low level
        assembly {

            // extcodesize retrieves the size of the code
            size := extcodesize(a)
        }
        return(size > 0);
    }

}

contract Attacker {
    bool public trickedYou;
    Victim victim;
    constructor(address _v) public {
        victim = Victim(_v);
        trickedYou = !victim.isItAContract();
    }
}

/*

function sendRefund() public onlyOwner returns(bool success) {
    if(!latte.send(amount)) { 
    }
}

function claimRefund() public {
    require(balance[msg.sender] > 0);
    msg.sender.transfer(balance[msg.sender]);
}

*/

/*

function withdrawFunds(uint amount) public returns(bool success) {
    require(balance[msg.sender] >= amount); // guards upfront
    balance[msg.sender] -= amount; // optimistic accounting
    msg.sender.transfer(amount); // transfer
    return true;
}

*/