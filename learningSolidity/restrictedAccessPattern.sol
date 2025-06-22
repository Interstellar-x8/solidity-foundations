// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

/* 
Restricted Access to a Contract is a common practice.

By default, a contract state is a read-only unless it is specified as public.

modifiers: 
    - onlyBy: only the mentioned caller can call this function.
    - onlyAfter: called after a certain time period.
    - costs: call this function only if a certain value is provided.

*/


contract RestrictedAccess {

    address public owner = msg.sender;
    uint public creationTime = block.timestamp;

    modifier onlyBy(address _account) {
        require(msg.sender == _account,'Sender not authorized!');
        _;
    }

    modifier onlyAfter(uint _time) {
        require(block.timestamp >= _time, 'Function is called too early!');
        _;
    }

    // write a function that will change the owner address
    function changeOwnerAddress(address _newAddress) onlyBy(owner) public {
        owner = _newAddress;
    } 

    // write a function that can disown the current owner
    function disown() onlyBy(owner) onlyAfter(creationTime + 3 weeks) public {
        delete owner;
    }







}