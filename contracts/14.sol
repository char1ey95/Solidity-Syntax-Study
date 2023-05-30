// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExamScore {
    event exam(string indexed name, uint256 score);

    function updateScore(string memory _name, uint256 _score) public {
        emit exam(_name, _score);
    }
}