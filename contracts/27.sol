// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract math {
    
    function division(uint256 _num1, uint256 _num2) public pure returns(uint256) {
        require(_num1 < 10, "num1 should not be more than 10");
        return _num1/_num2;
    }
}

contract runner {

    event catchErr(string _name, string _err);

    event catchPanic(string _name, uint256 _err);

    event catchLowLevelErr(string _name, bytes _err);

    math public instance = new math() ;

    function ExamTryCatch(uint256 _num1, uint256 _num2) public returns(uint256, bool) {
        try instance.division(_num1, _num2) returns(uint256 value){
            return(value, true);
        } catch Error(string memory _err) {
            emit catchErr("revert/require", _err);
            return(0, false);
        } catch Panic(uint256 _errorCode) {
            emit catchPanic("assertError/Panic", _errorCode);
        } catch (bytes memory _errorCode) {
            emit catchLowLevelErr("LowLevelError", _errorCode);
            return(0, false);
        }
    }
}