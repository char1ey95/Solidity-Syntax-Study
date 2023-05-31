// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EStruct {

    struct Person {
        string name;
        uint256 age;
        uint256 height;
    }
    
    mapping(uint256 => Person) public PersonMapping;
    Person[] public PersonArray;

    function createPerson(string memory _name, uint256 _age, uint256 _height) public pure returns(Person memory){
        return Person(_name, _age, _height);
    }

    function createPersonMapping(uint256 _key, string memory _name, uint256 _age, uint256 _height) public {
        PersonMapping[_key] = Person(_name, _age, _height);
    }

    function getPersonMapping(uint256 _key) public view returns(Person memory) {
        return PersonMapping[_key];
    }

    function createPersonArray(string memory _name, uint256 _age, uint256 _height) public {
        PersonArray.push(Person(_name, _age, _height));
    }

    function getPersonArray(uint256 _key) public view returns(Person memory) {
        return PersonArray[_key];
    }
}