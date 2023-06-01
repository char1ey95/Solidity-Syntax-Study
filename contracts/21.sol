// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ConditionExample {

    function checkEven(uint256 _num) public pure returns (bool) {
        if (_num % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    function checkValue(uint256 _value) public pure returns (string memory) {
        if (_value == 0) {
            return "Value is zero";
        } else if (_value > 0) {
            return "Value is positive";
        } else {
            return "Value is negative";
        }
    }
}
