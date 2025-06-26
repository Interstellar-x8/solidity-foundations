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