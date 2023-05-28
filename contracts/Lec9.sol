// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lec9 {
    string public name;
    uint256 public age;

    constructor(string memory _name, uint256 _age){
        name = _name;
        age = _age;
    }

    function change(string memory _name, uint256 _age) public {
        name = _name;
        age = _age;
    }
}

contract Lec9_2 {
    Lec9 instance = new Lec9("Char1ey", 29);

    function change(string memory _name, uint256 _age) public {
        instance.change(_name, _age);
    }

    function get() public view returns(string memory, uint256) {
        return (instance.name(), instance.age());
    }
}