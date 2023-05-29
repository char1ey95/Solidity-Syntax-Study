// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Father {
    string public lastName = "Kang";
    string public firstName = "Char1ey";
    uint256 public money = 100;

    constructor(string memory _firstName) {
        firstName = _firstName;
    }

    function getLastName() public view returns (string memory) {
        return lastName;
    }

    function getFirstName() public view returns (string memory) {
        return firstName;
    }

    function getMoney() public view virtual returns (uint256) {
        return money;
    }
}

contract Son is Father {
    uint256 public earning = 0;
    
    constructor() Father("Steve"){

    }
    

    function work() public {
        earning += 100;
    }

    function getMoney() public view override returns (uint256) {
        return money + earning;
    }
}
