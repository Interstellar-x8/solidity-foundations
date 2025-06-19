// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// if else statements

/* Exercise 1: Staking
- Create a stakingWallet variable as an integer and set it to the value of 10
- Write a function called airDrop which has public visibility, is IDE viewable and returns an integer
- Create decision making logic so that if the wallet has a value of 10, then add to the wallet 10 more
- Add an else statement so that if the wallet does not equal the value of 10 to add only 1 more
- Return the value of the wallet
- Deploy the contract to test the results. 
- Try changing the value of the wallet to 6 and redeploy for varying results
*/

contract decisionMaking {

uint stakingWallet = 6;

function airDrop() public view returns(uint) {
    if(stakingWallet == 10) {
        return stakingWallet + 10;
    } else {
        return stakingWallet + 1;
    } 
}

/* 
uint oranges = 4; 

function validateOranges() public view returns(bool) {
    if(oranges == 5) {
        return true;
    } else {
        return false; 
    }
     
}
*/

}

