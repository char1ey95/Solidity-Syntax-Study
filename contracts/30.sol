// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExModifier {

    uint256 public num = 5;

    modifier numChange {
        _;
        num = 10;
    }

    function numChangeFunc() public numChange {
        num = 15;
    }
    
    modifier overNumber(uint256 _value) {
        _;
        require(_value > 10, "error");
    }

    function InputNumber(uint256 _value) public pure overNumber(_value) {}
}



