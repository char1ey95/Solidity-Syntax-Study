># solidity

<br />

**솔리디티**는 `스마트 컨트랙트`를 개발하기 위한 언어이다.

`스마트 컨트랙트`는 미리 정의된 조건을 충족하면,

블록체인 안에 저장된 프로그램이 실행되는 것이다.

## Solidity의 실행

1. Contract의 작성

2. Contract 컴파일

3. 컴파일된 코드 배포

4. Contract Address를 이용하여 컨트랙트 코드 실행

<br />

## Solidity의 타입

<br />

1. data type
    - boolean : 참, 거짓을 나타낸다.
        - true or false

    - bytes : 바이트를 나타낸다.
        - bytes
        - 4bytes
        - ...

    - address : 주소를 나타내며, CA, EOA등이 이에 해당한다.

    - uint: int와 uint가 있는데 int는 마이너스와 양수, uint는 양수를 표현할 수 있다.
        - uint[number]는 0 ~ 2^[number] - 1 까지의 수를 나타낸다.
        - int[number]는 -2^[number - 1] ~ 2^[number - 1]까지의 수를 나타낸다.
        - ex) uint8 public a = 256 이면 에러가 난다. 255까지의 수를 나타낼 수 있기 때문이다.

2. reference type
    - string
    - Arrays
    - struct

3. mapping type

<br />

## Ether의 단위

<br />

1 ether는 = 10^9 Gwei = 10 ^ 18 wei

Gwei는 가스를 지불할 때 단위이다.

가스란? 스마트 컨트랙트를 사용할 때 지불하는 비용이다.

기름과 비슷하게 스마트 컨트랙트를 사용할 때 쓰는 연료라고 한다.

비용의 산출은 스마트 컨트랙트가 길면 길수록 가스 비용이 늘어난다.

간단한 스마트 컨트랙트는 가스가 들지 않는다.

하지만, 긴 스마트 컨트랙트는 가스가 많이 들게된다.

<br />

보안적인 측면에서도 가스를 이용하기 때문에 방지가 된다.

<br />

악의적인 해커가 코드를 계속 실행시킨다면

지속적인 코드 실행시 가스가 계속 들기 때문에

해커는 비용을 많이 지불하게 된다.

<br />

하지만 개발시 가스때문에 부담을 느끼게 되므로 개발시 걸림돌이 되기도 한다.

<br />

10의 18제곱 웨이가 모이면 1 eth라고 할 수 있다.

ex) 0.01ether는 10^16 wei로 표현된다.

솔리디티 문법에서도 ether, wei, gwei라는 단위를 지원하기 때문에

우리가 직접 10^18, 10^9라는 단위를 적어주지 않아도 된다.

<br />

## Function

<br />

    function 이름 () 접근제한자 {}

    function 이름 (타입 파라미터) 접근제한자 {}

    function 이름 (타입 파라미터) 접근제한자 {}

<br />

함수 정의시 `3가지 경우의 수`가 있다.

<br />

    매개변수와 리턴값이 없는 경우

    매개변수는 있으나 리턴값이 없는 경우

    매개변수와 리턴값이 둘다 있는 경우

<br />

## 접근제한자

<br />

public : 모든 곳에서 접근이 가능

<br />

external : 퍼블릭과 유사하지만, 다른 컨트랙트가 접근해야할때만 접근가능( 내부에서 접근 불가)

<br />

private : 프라이빗이 정의된 자기 컨트랙에서만 접근가능( private이 정의된 컨트랙을 상속 받은 자식도 불가능)

<br />

internal : 프라이빗과 유사, 상속받은 컨트랙도 접근가능

<br />

## pure와 view

접근제한자 앞뒤로 사용이 가능하다.

view: function 밖의 변수들을 읽을 수 있으나 변경이 불가능

pure: function 밖의 변수들을 읽을 수 없고, 변경도 불가능

둘다 아닐경우, 변수들을 읽고, 변경 해야한다.


## solidity의 저장방식

- `storage`: 대부분의 변수, 함수가 저장되는 곳, 영속적으로 저장된다.
    - 블록에 들어가니까, 가스비용이 비싸다.


- `memory`: 함수 안의값, 파라미터, 리턴, 레퍼런스 타입을 사용할 경우.
    - 함수가 작동할 때만 유효, 영속성이 없기 떄문에 스토리지 보다 가스가 싸다.


- `calldata`: external function 의 파라미터에서 사용


- `stack`: EVM에서 stack data를 관리할 때 쓰는 영역 1024mb로 제한적.

<br />

## instance를 사용하는 이유

<br />

하나의 컨트랙트에서 다른 컨트랙트에 접근한다.

    [컨트랜트 이름] [생성할 인스턴스 명] = new [컨트랙트]();

<br />

## 생성자 함수 constructor()

인스턴스를 생성할 때 변수의 값을 넣어줄 때 사용한다.

변수의 파라미터 값을 받고 스마트 컨트랙트를 생성할때,

## 상속

한 컨트랙트에서 다른 컨트랙트에 있는 기능들을 사용할 수 있다.

contract [상속받을 컨트랙트 명] is [상속할 컨트랙트 명] { // 코드 작성 }

## 오버라이딩

상속받은 함수를 변형시켜서 사용할 수 있다.

일종의 덮어쓰기라고 생각하면 된다.

오버라이드할 함수에는 overide 키워드를 적어주고,

내보내는 함수에는 virtual 키워드를 적어준다.

*두 가지 컨트랜트 이상을 상속할 경우*

is 다음에 순서대로 , 을 기준으로 상속할 컨트랙트를 적어주면 된다.

오버라이딩 시에는 overide(컨트랙트, 컨트랙트)를 적어주어야 한다.

```sol
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
```

*super*

상속 후에 override시에 기존 함수의 로직이 긴 경우

전부 써주는 것은 비효율적이기 때문에 `super.[함수명]();` 을 해주면,

기존 함수의 내용들을 적어주지 않아도 가져온 것 처럼된다.

같은 함수명을 가진 컨트랙트 두가지를 상속받아 사용할 경우에는 마지막에있는 컨트랙트에게 super가 적용된다.

마지막에 있는 상속의 내용이 가장 최신의 내용이기 때문이다.

<br />

## Event

솔리디티에는 콘솔로그와 같은 기능이 존재하지 않는다.

대신 event라는 것이 존재하고 event를 이용하면 블록체인 네트워크의 블록에 저장된다.

저장된 값은 블록에 저장되어 언제든지 꺼내서 사용할 수 있다.

```
contract Event {
    event [이벤트명](타입 [매개변수 명]);

    function 함수명 () public {
        emit [이벤트명](인자);
    }
}
```


*indexed*

이벤트 내에서만 사용할 수 있는 키워드로,

특정한 이벤트의 내용을 가져오는데 사용된다.

## Mapping

키와 값의 형태로 저장하는 타입이다.

값을 출력할 때에는 키를 이용해서 값을 반환한다.

**맵핑을 정의하는 법**

```sol
mapping([type] => [type]) [접근제한자] [변수명]

[변수명][type 값] = [type 값]
```


## Array

다른 언어들과 마찬가지로 length를 구할 수 있다.

또한 for loop문을 통해서 값들을 순회할 수 있다.

솔리디티에서는 Array보단 mapping을 선호한다.

Array는 순회할 수 있기 때문에 해커가 악의적으로 사용하면 DDos공격과 같은 악성코드를 실행할 여지가 있기 떄문이다.

**배열을 정의하는 방법**

```sol
contract Array {
    uint256[] public ageArray;
}
```

## Struct

타입을 새로 만드는 것이다.

객체(인터페이스)와 비슷한 느낌이다.

문법은 다음과 같이 쓴다.

```sol
struct Person {
    string name;
    uint256 age;
    uint256 height;
}
```

struct 타입은 memory를 적어줘야 한다는 점에 유의하자.

## if 조건문

**if-else**
```
if(if에 대한 조건){
    조건 충족시 실행할 코드
} else {
    조건 불충족시 실행할 코드
}
```

**if-elseif-else**
```
if(if에 대한 조건1){
    조건1 충족시 실행할 코드
} else if(조건2){
    조건2 충족시 실행할 코드
} else {
    조건1, 조건2 둘 다 불충족시 실행할 코드
}
```