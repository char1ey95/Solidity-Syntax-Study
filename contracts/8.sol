// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InstanceA {
    uint256 public num = 29;

    function change(uint256 _value) public {
        num = _value;
    }
}

contract InstanceB {
    InstanceA instance = new InstanceA();

    function getNum() public view returns (uint256) {
        return instance.num();
    }

    function changeNum(uint256 _value) public {
        instance.change(_value);
    }
}

contract InstanceC {
    InstanceA instance = new InstanceA();

    function getNum() public view returns (uint256) {
        return instance.num();
    }

    function changeNum(uint256 _value) public {
        instance.change(_value);
    }
}
