// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Access1 {
    uint256 public a = 5;
    uint256 private b = 5;
}

contract Access2 {
    uint256 public a = 3;

    function changeA(uint256 _value) internal {
        a = _value;
    }

    function changeB(uint256 _value) public {
        uint256 b = _value + 10;
        changeA(b);
    }
}


    // function get_a() view public returns( uint256 ) {
    //     return a;
    // }


// contract Access3 {
//     Access2 instance = new Access2();

//     function changeA1(uint256 _value) public {
//         instance.changeA(_value);
//     }

//     function use_public_example() view public returns (uint256) {
//         return instance.get_a();
//     }
// }