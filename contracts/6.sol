// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract State {
    uint256 public a = 1;

    function stateA () public view returns(uint256) {
        return a + 2;
    }
    
    function stateB () public pure returns(uint256) {
        uint256 b = 4;
        return b + 2;
    }

    function stateChangeA () public returns(uint256) {
        a = 13;
        return a;
    }
}
