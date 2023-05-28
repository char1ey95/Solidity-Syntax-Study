// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lec1 {
    bool public a = false;
    bool public a1 = !false;
    bool public a2 = false == true;
    bool public a3 = false && true;
    bool public a4 = false || true;

    bytes4 public b = 0x12345678;
    bytes public b1 = "STRING";

    address public c = 0x513467D8d19eB33E6A5bB570C96E46A56370C978;

    // int vs uint
    // int8 => -2^7 ~ 2^7 - 1
    // uint8 => 0 ~ 2^8 - 1
    int8 public d = 1;
    uint8 public d2 = 255;
}