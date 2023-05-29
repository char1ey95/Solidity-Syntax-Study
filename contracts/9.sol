// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InstanceD {
    string public name;
    uint256 public age;

    constructor(string memory _name, uint256 _age) {
        name = _name;
        age = _age;
    }

    function change(string memory _name, uint256 _age) public {
        name = _name;
        age = _age;
    }
}

contract InstanceE {
    InstanceD instance = new InstanceD("Char1ey", 29);

    function get() public view returns (string memory, uint256) {
        return (instance.name(), instance.age());
    }

    function change(string memory _name, uint256 _age) public {
        instance.change(_name, _age);
    }
}
