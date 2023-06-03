// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExamError {
    function assertNow() public pure {
        // assert를 이용한 에러를 발생하면 Panic(uint256)이라는 에러타입 발생
        // 가스를 환불 받고, 
        assert(false);
    }
}