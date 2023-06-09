// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExPayable {

    event howMuch(uint256 _value);

    // 배포할 경우에 CA에 이더를 주는 것이 가능해진다.
    constructor() payable {}

    // _to는 ether를 받아야 하는 주소 이므로 payable 필요
    // 함수 자체도 이더를 보내는 것이므로 payable 필요
    function exSend(address payable _to) public payable {
        // 보낼주소.send(보낼양)
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send ether");
        emit howMuch(msg.value);
    }

    // _to에게 ether를 보내는 것이므로 payable이 필요
    function exTransfer(address payable _to) public payable {
        // transfer는 error를 발생시키므로 에러를 발생시키지 않아도 된다.
        _to.transfer(msg.value);
        emit howMuch(msg.value);
    }

    function exCall(address payable _to) public payable {
        // ~ 0.7
        // (bool sent, ) = _to.call.gas(1000).value(msg.value)("");
        // require(sent, "Falied to send ether")

        // 0.7 ~
        (bool sent, ) = _to.call{value: msg.value, gas: 1000}("");
        require(sent, "Failded to sent ether");
        emit howMuch(msg.value);
    }
}