// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MapExam {
    mapping(string => uint256) private result;

    function setScore(string memory _name, uint256 _score) public {
        result[_name] = _score;
    }

    function getAge(string memory _name) public view returns(uint256){
        return result[_name];
    }
}