// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventExam {
    event exam(string indexed name, uint256 score);

    function updateScore() public {
        emit exam("Char1ey", 100);
        emit exam("Char2ey", 90);
        emit exam("Char3ey", 80);
        emit exam("Char4ey", 70);
        emit exam("Char5ey", 60);
    }
}