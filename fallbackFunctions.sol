// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

/*
Fallback Functions:
1. Cannot have a name (anonymous).
2. Does not take any inputs. 
3. Does not return any outputs.
4. Must be declated as external.
*/

contract FallBack {

    event Log(uint gas);
    fallback() external payable {
        // not recommended to write much code in here - because the function will fail if it uses too much gas. 

        // special solidity function gasleft returns how much gas is left.
        emit Log(gasleft());
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}




