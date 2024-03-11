# todo002

A new Flutter project.

## 플루터(다트)의 변수

- 플루터 에서는 3가지 타입의 변수 선언 키워드가 있다.
- ㅠㅡㄹ루터에서도 정적 테이블 변수를 선언할 수 있다.

```dart
String name = "홍길동",
int num =12345


```

- Flutter 에서는 동적 type 변수를 선언할 수 있다.
- 동적 type 변수를 선언할때는 `const`, `fianl`, `var` 키워드를 사용할 수 있다.

### const

- `const` 키워드는 일반적인 변수와 성질이 매우 다르다.
- 완전한 상수값을 저장하는 저장소를 선언하는 키워드
- 코드에서 `magic string` 코드를 사용하지 않도록 하기 위한 것이기도.
- `widget` 을 사용할때도 const 를 부착할때가 있다.
- `const` type 의 변수는 함수의 `return` 값을 저장할 수 없다.
- 함수의 return 값은 코드가 실행되는 과정에서 확정되기 때문에 const type 변수에 저장할 수 없음.

```dart
const korea = "Republic of Korea"
const naver_ID = "sster"
```

### final

- `final` 키워드가 부착된 변수는 한번만 값을 할당할 수 있다.
