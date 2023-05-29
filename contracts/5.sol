// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Access1 {
    uint256 public a = 5;
    uint256 private b = 5;
}

contract Access2 {
    uint256 public a = 3;

    function changeA(uint256 _value) internal {
        a = _value;
    }

    function changeB(uint256 _value) public {
        uint256 b = _value + 10;
        changeA(b);
    }
}