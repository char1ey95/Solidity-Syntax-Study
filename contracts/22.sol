// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LoopExample {
    function forLoop(uint256 _num) public pure returns(uint256) {
        uint256 result;

        for (uint256 i = 0; i <= _num; i++) {
            result += i;
        }

        return result;
    }

    function whileLoop(uint256 _num) public pure returns(uint256) {
        uint256 count = _num;
        while (count > 0) {
            count--;
        }

        return count;
    }

    function doWhileLoop(uint256 _num) public pure returns(uint256) {
        uint256 result = 1;
        uint256 i = 1;

        do {
            result *= i;
            i++;
        } while (i <= _num);

        return result;
    }
}