// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Wallet {

    uint256 public current_balance = 100;
    
    function purchase(uint256 _value) public returns(uint256) {
        require(_value < current_balance, "not enough balance");
        current_balance -= _value;
        return current_balance;
    }
}

contract Runner {

    event catchErr(string _name, string _err);

    event catchPanic(string _name, uint256 _err);

    event catchLowLevelErr(string _name, bytes _err);

    Wallet public instance = new Wallet() ;

    function ExamTryCatch(uint256 _value) public returns(uint256, bool) {
        try instance.purchase(_value) returns(uint256 value){
            return(value, true);
        } catch Error(string memory _err) {
            emit catchErr("revert/require", _err);
            return(0, false);
        } catch Panic(uint256 _errorCode) {
            emit catchPanic("assertError/Panic", _errorCode);
            return(0, false);
        } catch (bytes memory _errorCode) {
            emit catchLowLevelErr("LowLevelError", _errorCode);
            return(0, false);
        }
    }
}