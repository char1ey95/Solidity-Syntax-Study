// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LoopExample {
    function findFirstEvenNumber(uint256[] memory numbers) public pure returns (uint256) {
        uint256 result = 0;

        for (uint256 i = 0; i < numbers.length; i++) {
            if (numbers[i] % 2 != 0) {
                continue; // 홀수인 경우 현재 반복 건너뛰기
            }

            result = numbers[i];
            break; // 첫 번째 짝수를 찾았으므로 반복문 종료
        }

        return result;
    }
}
