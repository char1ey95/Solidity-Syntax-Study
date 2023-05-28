// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lec6 {
    uint256 public a = 1;

    // 변경되지 않는다.
    function read_a () public view returns(uint256) {
        return a + 2;
    }
    
    function read_b () public pure returns(uint256) {
        uint256 b = 4;
        return b + 2;
    }

    function read_c () public returns(uint256) {
        a = 13;
        return a;
    }
}
