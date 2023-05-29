// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bird {
    uint256 public wings = 2;
    uint256 public eatBird = 10;

    function getBird() public view returns (uint256) {
        return wings;
    }

    function getEatFish() public view virtual returns (uint256) {
        return eatBird;
    }
}

contract Fish {
    bool public swim = true;
    uint256 public eatFish = 5;

    function getFish() public view returns (bool) {
        return swim;
    }

    function getEatFish() public view virtual returns (uint256) {
        return eatFish;
    }
}

contract Penguin is Bird, Fish {
    function getEatFish() public view override(Bird, Fish) returns (uint256) {
        return eatBird + eatFish;
    }
}
