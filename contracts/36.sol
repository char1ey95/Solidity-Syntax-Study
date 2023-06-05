// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

contract Add {
    event JustFallback(string _str);
    event JustReceive(string _str);

    function addNubmer(uint256 _num1, uint256 _num2) public pure returns(uint256) {
        return _num1 + _num2;
    }
}

contract caller {
    event calledFunction(bool _success, bytes _output);

    // 1. 송금하기
    function transferEther(address payable _to) public payable {
        (bool success, ) = _to.call{value: msg.value}("");
        require(success, "failed to transfer ether");
    }

    // 2. 외부 스마트 컨트랙 함수 부르기
    function callMethod(address _ca, uint256 _nul1, uint256 _num2) public payable {
        (bool success, bytes memory outputFromCalledFunction) = _ca.call(abi.encodeWithSignature("addNumber(uint256, uint256)", _num1, _num2));
        require(success, "failed to transfer ether");
        emit calledFunction(success, outputFromcalledFunction);
    }
}