// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExamError {
    function assertNow() public pure {
        assert(false);
    }
    
    function revertNow() public pure {
        revert("error");
    }

    function requireNow(uint256 _num) public pure {
        require(_num <= 10, "error message");
    }
}