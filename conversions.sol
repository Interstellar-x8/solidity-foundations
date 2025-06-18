// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// What are uints?

// The uint is a data type is an unsigned integer, meaning its value must be non-negative.
// There's also an int data type for signed integers.

// Note: In Solidity, uint is actually an alias for uint256, a 256-bit unsigned integer. uint defaults to 256. Min value of 0 and maximum value of 2^256-1.

contract learnConversions {
uint number = 2;

// conversion to smaller type costs higher order bits.
uint32 a = 0x12345678;
uint16 b = uint16(a); // b = 0x5678

// conversion to higher type adds padding bits to the left.
uint16 c = 0x1234;
uint32 d = uint32(c); // d = 0x00001234

// what is cost?
// conversion to smaller bytes costs higher order data
bytes2 e = 0x1234;
bytes1 f = bytes1(e); // f = 0x12

// what does this add?
// conversion to larger bytes adds padding bits to the right

bytes2 g = 0x1234;
bytes4 h = bytes4(g); // h = 0x12340000


}