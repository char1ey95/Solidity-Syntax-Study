// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Father {
    string public lastName = "Kang";
    string public firstName = "Char1ey";
    uint256 public money = 100;

    constructor(string memory _firstName){
        firstName = _firstName;
    }

    function getLastName() view public returns(string memory){
        return lastName;
    }

    function getFirstName() view public returns(string memory){
        return firstName;
    }
    
    function getMoney() view public returns(uint256){
        return money;
    }
}

contract Son is Father("Steve") {

}