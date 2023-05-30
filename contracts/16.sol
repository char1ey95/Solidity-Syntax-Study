// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bird {
    event Wings(uint256 num);
    function getAnimal() public virtual {
        emit Wings(2);
    }
}

contract Mouse {
    event Legs(uint256 num);
    function getAnimal() public virtual {
        emit Legs(4);
    }
}

contract Bat is Bird, Mouse {
    function getAnimal() public override(Bird, Mouse) {
        super.getAnimal();
    }
}