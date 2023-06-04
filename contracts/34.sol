// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExConstructPayable {

    // 베포될 경우에 생성된다.
    // 배포될 떄 이더를 받을 수 있게된다.
    // CA의 주소를 이용해서 값을 체크하게 되면, CA가 가진 이더의 수를 알 수 있다.
    // 

    // 특정 주소에 권한을 주기
    // 생성할 때 배포를 실행한 EOS에 권한을 준다.
    address owner;
    constructor() payable {
        owner = msg.sender;
    }

    event SendInfo(address _msgSender, uint256 _currentValue);
    event MyCurrentValue(address _msgSender, uint256 _value);
    event CurrentValueOfSomeone(address _msgSender, address _to, uint256 _value);

    function sendEther(address payable _to) public payable {
        require(msg.sender == owner, "Only Owner!");
        require(msg.sender.balance >= msg.value, "Your balance is not enough");
        _to.transfer(msg.value);
        emit SendInfo(msg.sender, (msg.sender).balance);
    }

    function checkValueNow() public {
        emit MyCurrentValue(msg.sender, msg.sender.balance);
    }

    function checkUserMoney(address _to) public {
        emit CurrentValueOfSomeone(msg.sender, _to, _to.balance);
    }
}