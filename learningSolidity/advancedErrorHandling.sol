// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract LearnErrorHandling {
    bool public sunny = true;
    bool public umbrella = false;
    uint finalCalc = 0;

    function solarCalc() public {
        require(sunny, 'It is not sunny today!');
        finalCalc += 3;
    }

    function internalTestingUnits() public view{
        assert(finalCalc != 6);
    }

    // machine that controls the weather. 
    function weatherChanger() public {
        sunny = !sunny;
    }

    function getCalc() public view returns(uint) {
        return finalCalc;
    }

    function bringUmbrella() public {
        if(!sunny) {
            umbrella = true;
        } else {
        revert('No need to bring an umbrella today!');
        }
    }

}

contract Vendor {
    address seller;

    modifier onlySeller() {
        require(msg.sender == seller, 'Only the seller can sell!');
        _;
    }

    function becomeSeller() public {
        seller = msg.sender;
    }



    function Sell(uint amount) payable public onlySeller {
        if(amount > msg.value) {revert('Not enough ether!');
        }
    }

}