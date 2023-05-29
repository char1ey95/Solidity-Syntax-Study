// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventExam {
    event exam(string name, uint256 score);

    function updateScore() public {
        emit exam("Char1ey", 100);
    }
}