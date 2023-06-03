// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract ErrorHandle {
    
    function assertNow() public pure {
        // assert(조건문);
        // 보통 테스트를 위한 용도로 사용한다.
        // 가스 환불 X
        assert(false);
    }
    
    function revertNow() public pure {
        // 조건없이 에러를 발생
        // 인자로 에러 메시지를 입력
        // 가스 환불 O
        // 조건없이 에러를 발생 시키기 때문에 조건문과 함께 사용한다.
        revert("error");
    }

    function requireNow(uint256 _num) public pure {
        // 조건이 false일 경우에 에러를 발생
        // 두 번째 인자로 메시지를 넣을 수 있다.
        // 가스 환불 O
        require(_num <= 10, "error message");
    }
}