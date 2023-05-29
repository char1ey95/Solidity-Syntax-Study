// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Data_type {
    bool public a1 = false;
    bool public a2 = !false;
    bool public a3 = false == true;
    bool public a4 = false && true;
    bool public a5 = false || true;

    bytes4 public b1 = 0x12345678;
    bytes public b2 = "STRING";

    address public c1 = 0x513467D8d19eB33E6A5bB570C96E46A56370C978;

    int8 public d1 = 1;
    uint8 public d2 = 255;
}