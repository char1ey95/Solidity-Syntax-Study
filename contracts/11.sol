// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bird {
    uint256 public wings = 2;
    uint256 public legs = 2;
    string public eat;

    constructor(string memory _eat){
        eat = _eat;
    }

    function getWingsNum() view virtual public returns(uint256){
        return wings;
    }

    function getLegsNum() view public returns(uint256){
        return legs;
    }
    
    function getNmae() view public returns(string memory){
        return eat;
    }
}

contract Penguin is Bird("Fish") {

    function getWingsNum() view override public returns(uint256){
        return wings - 2;
    }
}