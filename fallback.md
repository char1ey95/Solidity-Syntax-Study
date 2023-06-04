## fallback 함수

fallback 함수는 이름 그대로 대비책 함수이다.

특징
1. 익명 함수이다.
2. external 함수이다.
3. payable을 붙여야한다.

용도
1. 스마트 컨트랙이 이더를 받을 수 있게 한다.
2. 이더를 받고난 후에 어떤 동작을 할지 정의할 수 있다.
3. call 함수로 없는 함수가 불려질 때 어떤 행동을 취하게 할 수 있다.

call은 외부 스마트 컨트랙의 함수를 사용할 수 있다.

외부 스마트 컨트랙에 특점 함수가 없을 경우 그 함수의 fallback을 발동 시킬 수 있다.

```ts
// 0.6 이전
function() external payable {}
// 0.6 이후
// receive : 순수하게 이더만 받을 경우 사용
// fallback : 함수를 실행하면서 이더를 보낼 경우, 불러진 함수가 없을 때 사용한다.
fallback () external {}
fallback () external payable {}
receive () external payable {}
```


