// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HowIsItSaved {
    string name = "Char1ey";

    function savedStr(string memory _str) public pure returns(string memory){
        return _str;
    }

    function savedUint(uint256 _uint) public pure returns(uint256){
    return _uint;
    }
}
