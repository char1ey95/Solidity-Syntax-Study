// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayExam {
    uint256[] public scoreList;

    function listLength() public view returns (uint256) {
        return scoreList.length;
    }

    function ScorePush(uint256 _score) public {
        scoreList.push(_score);
    }

    function ScoreGet(uint256 _index) public view returns (uint256) {
        return scoreList[_index];
    }

    function ScorePop() public {
        scoreList.pop();
    }

    function ScoreDelete(uint256 _index) public {
        delete scoreList[_index];
    }

    function ScoreChange(uint256 _index, uint256 _age) public {
        scoreList[_index] = _age;
    }
}
