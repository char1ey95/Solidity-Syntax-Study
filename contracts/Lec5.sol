// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lec5 {
    uint256 public a = 5;
    // 접근이 불가능하다.
    uint256 private b = 5;


}

contract Example {
    uint256 public a = 3;

    function changeA(uint256 _value) public {
        a = _value;
    }

    function get_a() view public returns( uint256 ) {
        return a;
    }
}

contract Example2 {
    Example instance = new Example();

    function changeA1(uint256 _value) public {
        instance.changeA(_value);
    }

    function use_public_example() view public returns (uint256) {
        return instance.get_a();
    }
}