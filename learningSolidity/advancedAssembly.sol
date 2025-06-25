// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
Solidity provides an option to use assembly language to write inline assembly within Solidity source code.

Assembly is a low level language that allows you to directly manipulate the EVM(dangerous)

EVM - smart contracts are not the real code in the blockchain - solidity code is compiled to a lower level language.
*/

contract LearnAssembly {
    function addToEVM() external {
        uint x;
        uint y;
       // uint z = x + y;

    assembly {

        // declares an assembly block
        // inside, we can manipulate variables declared outside
        // no semi colon, = is actually := and we can bring in opcodes
        let z := add(x,y)

        // if, functions, for loops can run in assembly.

        // load data for a specific slot.
        let a := mload(0x40)

        // store soemthing temporarily to memory
        mstore(a,4)

        // persistance storage
        sstore(a,100)

        }

    }

}