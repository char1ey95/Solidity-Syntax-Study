## call(low level function)

**call의 역할**
1. 이더를 송금할 수 있다.
2. 외부 스마트 컨트랙트를 부를 수 있다.
3. 가변적인 가스의 소모를 할 수 있다.( <--> send, transfer )
4. 이스탄불 하드포크 이후에 call의 사용을 권장
5. `re-entrancy(재진입)` 공격위험으로 인해 Checks_Effects_Interactions_pattern을 사용해야한다.


<br />

※ abi는 이더리움 환경에서 코드가 작동할 수 있도록 작성된 파일이다.

## delegate call

- msg.sender가 본래의 스마트 컨트랙트를 나타낸다.
- delegate call이 정의된 스마트 컨트랙(caller)이 외부 컨트랙의 함수들을 마치 자신의 것처럼 사용(실질적인 값도 caller에 저장)

단, 외부 스마트 컨트랙과 caller 스마트 컨트랙은 같은 변수를 갖고 있어야한다.

```ts
주소.delegatecall()
```

