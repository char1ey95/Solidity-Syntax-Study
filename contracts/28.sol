// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract character {
    string private name;
    uint256 private power;

    constructor(string memory _name, uint256 _power){
        name = _name;
        power = _power;
    }
}

// 외부 컨트랙트의 인스턴스를 생성할 때
contract runner {
    event catchOnly(string _name, string _err);

    function playTryCatch(string memory _name, uint256 _power) public returns(bool succeessOrfail) {
        try new character(_name, _power) {
            return(true);
        } catch {
            // catch를 하나만 써도 무방하다
            emit catchOnly("catch", "ErrorS");
            return(false);
        }
    }
}

// 스마트 컨트랙트 내에서 함수를 부를 때

contract runner2 {
    event catchOnly(string _name, string _err);

    function simple () public pure returns(uint256) {
        return 4;
    }

    function playTryCatch() public returns(uint256, bool) {
        try this.simple() returns(uint256 _value) {
            return(_value, true);
        } catch {
            emit catchOnly("catch", "ErrosS");
            return(0, false);
        }
    }
}