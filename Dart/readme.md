# Dart-for-Beginners

Dart 시작하기

### 📌 주요 기술 스택

<div style="display:flex;">
    <img src="https://img.shields.io/badge/Dart-0175C2?style=flat-square&logo=Dart&logoColor=white"/>
</div>

### 📌 배우는 이론

- Variables
- Data Types
- Functions
- Classes
- Syntax
- Constructors
- Inheritance
- Null Safety
- Mixins

<br>

## #0 INTRODUCTION

### #0.2 How To Learn

### 1. Dart 초기 세팅

- flutter를 설치하면 dart는 자동으로 같이 설치됨.

### ✔ Mac

- (brew 설치: https://brew.sh/index_ko)
<br> 
>$ brew install flutter

### ✔ window
- (chocolatey 설치: https://community.chocolatey.org/)
<br>
> $ choco install flutter

<br>

### 2. vscode extensions 설치
- Flutter 검색, 설치

<img width="783" alt="스크린샷 2024-06-24 오후 11 58 59" src="https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/7d819247-526d-4b24-a160-d8eed349d7c1">

<br>

### 3. vscode에서의 dart 사용법

하단 이미지와 같이 .dart 확장자의 파일을 생성하면 vscode 에디터에 Run | Debug 버튼이 나타나고, Run 실행하면 하단 터미널 창에서 결과 값을 보여줌.

![스크린샷 2024-06-22 오전 2 31 29](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/f13b67b6-c00e-4ea6-8dab-d807f8dab884)

<br>
<br>

## #1 VARIABLES

### #1.0 Hello World

main함수

- main함수는 모든 Dart 프로그램의 Entry point이다.
- main 함수에서 쓴 코드가 호출된다. 
    - 만약 main이 없다면 실행이 되지 않는다.
- dart는 자동으로 세미콜론(;)을 붙여주지 않기 때문에 직접 붙여야 한다. 
    - 일부러 세미콜론을 안 쓸 때가 있기 때문

```dart
void main(){
    print("hello world");
}
```

<br>
<br>

### #1.1 The Var Keyword

#### 변수를 만드는 2가지 방법

- dart에서는 변수를 1. `var` 키워드 또는 2. `명시적 타입`을 사용해 만든다.

- 다른 타입의 변수는 서로 대입할 수 없다.

- 주로 함수나 메소드 내에서 `지역변수`를 선언할 때에는 var를 사용하는 것이 Dart 스타일가이드에서 권장하는 방식

- class에서 `변수`나 `프로퍼티(속성)`를 선언할 때는 `명시적 타입`을 지정하는 것이 일반적.

- 코드가 알아서 명시적 타입을 추론해주기도 함.

- 가능한 선에서 var 사용 권장. class에서는 명시적 타입 사용.


### 1. var 사용 - 방법 ①

- 함수나 메소드 내부에 지역변수를 선언할 때는 var를 사용

```dart
void main(){
    var name = "gyuwon";
}
```

### 2. 명시적 타입 사용 - 방법 ②

- class에서 변수나 property를 선언할 때는 타입을 지정

```dart
void main(){
    String name = "gyuwon";
}
```

### 3. 다른 타입의 변수는 서로 대입할 수 없다.

```dart
void main() {
    var name = "gyuwon"; // 방법 1
    String name = "gyou1"; // 방법 2
    name = "1gyou1 ";
}
```

<br>
<br>

### #1.2 Dynamic Type

- dart는 `여러 타입을 가질 수 있는` dynamic 타입을 지원한다. (해당 변수의 타입을 알 수 없을 때 주로 사용)

- 만약 변수를 선언할 때 아무런 값을 지정하지 않거나, 타입을 선언하지 않으면 자동적으로 dynamic 타입을 가진다.

- 대표적으로 타입을 알기가 힘들 때 사용한다. ex) json 작업

- dynamic 타입은 다양한 타입을 가질 수 있기 때문에 이상적으로는 사용을 피할 것.

```dart
void main() {
    var name = "gyou1";
    name = 12;
    name = true;
}

void main() {
    dynamic name = "gyou1"; // 상단과 동일, 타입 명시 버전
    name = 12;
    name = true;
}
```

<br>
<br>

### #1.3 Nullable Variables

### Null Safety
- Dart 버전이 업데이트 되면서 추가된 기능으로, 개발자가 null 값을 참조하지 못하도록 하는 것이 주요 목적이다.
- 기존에는 null 값을 참조하면 런타임 에러가 발생할 수 있었으나, Null Safety를 통해 컴파일 전에 오류를 방지할 수 있게 해줌.
    - (사용자가 앱을 사용하는 동안 발생하는 런타임 에러를 최소화하여 안전성 확보)
- Null Safety를 사용하면 변수가 null일 수 있는지 여부(nullable)를 명시적으로 나타내어 안전한 코드 작성을 지원함.

사용 예시
```dart
void main(){
    String? name = "gyou1"; // ? 물음표를 사용해 변수가 null일 수 있음을 선언.
    name = null;
}
```
<br>

### 1. null인데 `?` 안써주면 오류

`?` 로 null일 수 있음 선언을 안해주면 오류남

![스크린샷 2024-06-25 오후 11 14 14](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/dec6d347-445b-474c-9321-130867d1041f)

### 2. null 값인지 if문으로 확인 필요
변수가 null값인지 아닌지 if문으로 확인 필요, 확인 안하면 오류

![스크린샷 2024-06-25 오후 11 22 12](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/71cc4452-e1c5-4de5-85e1-8e8b3939c79f)

#### if문 작성 방법 ①
```dart
void main(){
    String? name = "gyou1";
    name = null;
    if(name != null){ // null인지 확인
      name.isNotEmpty; // 확인 후 실행
    }
}
```

#### if문 작성 방법 ②
```dart
void main(){
    String? name = "gyou1";
    name = null;
    name?.length; // null인지 확인 후 실행
}
```

<br>
<br>

### #1.4 Final Variables

#### Final

- var 또는 명시적 타입으로 변수를 만들어도 나중에 변수 값이 수정되는 경우가 생기는데, 
    <br>자바스크립트의 const처럼 한 번 정의된 변수를 수정할 수 없게 만들려면 `final` 사용하기.

사용 예시
```dart
void main(){
    final name = "gyou1"; // string 타입 자동 추론.
}
```
명시적 타입 작성 기재 버전
```dart
void main(){
    final String name = "gyou1";
}
```

<br>

#### final 변수 값 변경 시도 오류 예시
- 변수 수정 불가

![스크린샷 2024-06-25 오후 11 42 49](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/99bb612b-97b1-4432-8910-0c571a337c11)

![스크린샷 2024-06-25 오후 11 41 38](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/b518302a-4a05-470a-b3cb-a628b08b0758)


<br>
<br>

### #1.5 Late Variables

### late

- final이나 var 앞에 붙여줄 수 있는 수식어이다.
- late는 초기 데이터 없이 변수를 선언할 수 있게 해준다.
- 변수를 먼저 만들고, 데이터를 나중에 넣을 수 있게 해줌.
- data fetching 할 때 유용

<br>

사용 예시
```dart
void main(){
    late final String name;
    // do something, go to api
    name = 'gyou1';
}
```

### 1. final 사용으로, 최초 1회 데이터가 할당되면 late써도 다른 값으로 변경 못함.

![스크린샷 2024-06-25 오후 11 55 06](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/280bc927-3f09-4216-99ea-612f71a79e99)


### 2. 최초 1회 값이 할당되기 전에는 데이터가 없기 때문에 접근 못함.

![스크린샷 2024-06-25 오후 11 57 08](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/c431be9c-d10d-4455-9cf1-fe48b94efc61)

<br>

### late를 사용해야하는 이유

late를 사용하지 않고 빈 변수 생성한 예시 코드

```dart
void main() {
    final name; // 이렇게 변수 선언 가능하긴 함. 권장 XX
    name = 'nico';
}
```
- class 내의 인스턴스 변수가 final이면 만들면서 바로 할당해야하고, late final이면 만들고 난 후에 할당해도 됨.
    - final 변수는 선언되자마자 함수 실행, late 변수는 선언되어도 함수를 실행시키지 않고, 나중에 변수를 사용할 때 함수를 실행 시킴.
- api 사용에 있어서 null을 실수로 사용하는 것을 방지하는 기능적인 부분을 강조
- Nullable 타입이 아닌(?가 없는) 타입들은 빈 값(null)을 가질 수 없는데, 
    <br>late 키워드를 써줘서 사용하기 전에 할당한다고 알려주어 null-satefy가 보장됨.(안정성)
- 다른 함수에서 값을 변경할 수 있을 때 의미가 있다고 함. class 문법에서 사용하게 됨.

<br>

### late의 함수 실행 시점
- 다른 변수는 선언되자마자 함수 실행, late 변수는 선언되어도 함수를 실행시키지 않고, 
<br>나중에 변수를 사용할 때 함수를 실행 시킴.

#### 1. late는 추가 함수를 실행하지 않으면 작동 안함.

![스크린샷 2024-06-26 오전 12 20 00](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/e8b339de-03f4-4660-b9df-7fe143afc671)

#### 2. late 추가 함수 실행시 작동

![스크린샷 2024-06-26 오전 12 20 36](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/728ac1ff-bc43-4f96-914b-439593342430)

#### 3. final 사용하지 않아도 상단과 동일한 결과 - late가 아니면 즉시 실행

![스크린샷 2024-06-26 오전 12 27 01](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/81feaab2-10f8-4fce-9106-8d65662e394e)

<br>
<br>

### #1.6 Constant Variables

### const 

- dart의 const는 javascript, typescript에서 사용하는 const와는 다르다.
- compile-time constant - compile-time에 알고 있는 값. (변하지 않는 상수)
    - 컴파일, 앱스토어에 보내기 전에 알고 있어야하는 값.
    - ex) Api에서 받아와야하는 값, 사용자가 입력해야하는 값 등.. 사용 X - final, var 사용
- const를 사용하는 이유
    - 메모리 효율성을 높이기 위해
    - 런타임 오버헤드를 줄이기 위해
```dart
void main() {
    const max_allowed_price = 120; // 앱에 사용할 상수(컴파일 시점에 바뀌지 않는 값)
}
```

### late와 const는 함께 사용할 수 없다.

- late와 const가 상반된 목적을 가지고 있다.
- const 키워드는 컴파일 타임 상수를 선언하는 데 사용된다. const 변수는 반드시 선언과 동시에 초기화되어야 하며, 그 값은 컴파일 타임에 결정되어야 한다. (즉시 초기화 필요)
- late 키워드는 변수를 나중에 초기화할 수 있게 한다. 즉, 선언 시점에서는 초기화하지 않고 나중에 사용할 때 초기화 된다.
- late final은 함께 사용 가능.

```dart
void main() {
    late const 변수; // 이런 선언문은 사용 불가능
}
```

<br>
<br>

### #1.7 Recap

#### 변수를 만드는 2가지 방법

- 타입 + 변수명 = 데이터;
- var + 변수명 = 데이터;

```dart
void main(){
    int i = 12; // 1. 타입 + 변수명 = 데이터;
    var name = 'la'; // 2. var + 변수명 = 데이터;

    i = 1212121212; // 타입이 맞는 선에서 무한 업데이트 가능
    name = 'lalalalalala'; // 타입이 맞는 선에서 무한 업데이트 가능
}
```

1. `var` 변수명 = 변수값
    - 처음 할당한 변수값과 같은 타입으로만 업데이트 가능
    - 컴파일러가 변수의 타입을 추론해줘서 구체화하지 않아도 됨.
    - 가능한 var를 쓰도록 권장
2. `String` 변수명 = 변수값 
    - 명시적으로 설정한 타입(String)으로만 업데이트 가능
3. String`?` 변수명 = 변수값 
    - 명시적으로 설정한 타입(String) 외에 Null 타입으로도 업데이트 가능
4. `dynamic` 변수명 = 변수값 
    - 처음 할당한 변수값과 다른 타입으로도 업데이트 가능
5. `final` 변수명 = 변수값 
    - 한번 할당한 변수값을 바꿀 수 없음
6. `late` final String 변수명 
    - 처음 변수명을 선언할 때 변수값을 할당하지 않아도 되며, 나중에 명시적으로 설정한 타입(String)으로 변수값을 설정할 수 있음. 한번 할당한 변수값을 바꿀 수 없음
7. `const` 변수명 = 변수값 
    - 컴파일하기 전(앱을 실행하기 전)에 미리 변수값을 정해줘야 함(compile-time constant). 한번 할당한 변수값을 바꿀수 없음

<br>
<br>

## #2 DATA TYPES

### #2.0 Basic Data Types

- dart에서 자료형은 모두 객체이다. 
- `String`, `int`, `double`, `bool` 모두 class이다.
    - 따라서 import할 필요 없이 해당 자료형이 가지는 모든 method를 사용할 수 있다.
- `int`와 `double` 은 `num`이라는 자료형을 상속받은 자료형이다.
    - `num`은 그 값이 integer 일 수도 있고 double 일 수도 있다.

```dart
void main() {
  String name = "gy0u1";
  bool isPlay = true;
  int age = 10;
  double money = 52.55;
  num x = 12;
  x = 20;
}
```

<br>

`int`와 `double` 은 `num`이라는 자료형을 상속받은 자료형

![스크린샷 2024-06-26 오후 11 43 45](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/802d8810-1432-4174-a75d-5edec7a9b368)


<br>
<br>

### #2.1 Lists

- dart의 유용한 점은 `collection if`와 `collection for`을 지원하는 것이다.
- List를 만들고 마지막 요소에 쉼표로 마무리해주면 자동으로 줄바꿈을 지원해줌.
    - Shift + Alt + F

#### dark에서 lists를 선언하는 두 가지 방법

```dart
void main(){
    List<int> numbers = [1,2,3,4];// 1. 명시적 타입
    var numbers = [1,2,3,4];// 2. var 사용
}
```

<br>

### collection if

- collection if를 사용하면 `존재할 수도 안할 수도 있는 요소를 가지고 올 수 있다.`

```dart
void main() {
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
    /* 
        상단 if문과 동일한 문법
        if (giveMeFive){
            numbers.add(5);
        }

    */
  ];
  print(numbers); // [1, 2, 3, 4, 5]
}
```

<br>
<br>

### #2.2 String Interpolation

#### 텍스트 안에 변수를 삽입하는 방법

1. 문자열 내 단순 변수 삽입
    -  따옴표 내부에 `$변수명`
2. 문자열 내 변수를 계산하여 삽입
    - `${계산식}` - 중괄호 사용
3. $ 또는 ' 등 그대로 표시 (escape 문자)
    - `\$` 또는 `\'`

```dart
void main(){
    var name = "gy0u1";
    var age = 10;
    var greeting = 'hello $name, I\'m ${age + 5}';

    print(greeting); // hello gy0u1, I'm 15
}
```

<br>
<br>

### #2.3 Collection For 

### Collection For 

- Collection 내부에서 for문을 사용할 수 있음

```dart
void main() {
  var oldFriends = ["g1", "g2"];
  var newFriends = [
  "gy0u3",
  "gy0u4",
  for (var friend in oldFriends) "❤️ $friend",
  ];

  print(newFriends); // [gy0u3, gy0u4, ❤️ g1, ❤️ g2]
}
```

<br>
<br>

### #2.4 Maps

- dart의 Map은 Javascript나 TypeScript의 object, pythonDML dictionary와 같다.
- Map은 key 와 value로 이루어진 자료구조이다.

예시 코드
```dart
void main(){
    var player = { // Map<String, Object> 타입 추론해줌
        'name' : 'gyou1',
        'xp' : 19.99,
        'superpower' : false,
        // key : value 형식
    };
}
```
![스크린샷 2024-06-28 오전 1 15 27](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/b9031c59-ae9f-4145-82e7-65d543d10981)

<br>

### Object는 어떤 자료형이든지 될 수 있다.

- String, int 등 여러개의 타입이 추론될 때 사용한다.
- TypeScript의 any 타입과 같다.

```dart
void main(){
    Map<String, Object> player = {
        // String, Object
        'name' : 'gyou1',
        'xp' : 19.99,
        'superpower' : false,
    };
}
```

<br>

### Map에서의 명시적 타입 사용 예시
```dart
void main(){
    Map<String, Object> player = {
        'name' : 'gyou1',
        'xp' : 19.99,
        'superpower' : false,
    };
}
```
```dart
void main(){
    Map<String, String> player = {
        'name' : 'gyou1',
        'xp' : '19.99',
        'superpower' : 'false',
    };
}
```
```dart
void main(){
    Map<int, bool> player = {
        1 : true,
        2 : false,
        3 : true,
    };
}
```
```dart
void main(){
    Map<List<int>, bool> player = {
        [1, 2, 3, 4] : true,
    };
}
```
```dart
void main(){
    List<Map<String, Object>> players = [
        {'name' : 'gyou1', 'superpower' : false },
        {'name' : 'gyou2', 'superpower' : true },
    ];
}
```

<br>
<br>

### #2.5 Sets 

- [] 리스트가 아닌 {} 사용하면 Set 사용
- dart에서의 List는 Python의 List와 같고, dart에서의 Set은 Python의 Tuple과 같다.

```dart
void main(){
    var numbers = {1, 2, 3, 4}; // Set<int> 자동 추론
}
```
```dart
void main(){
    Set<int> numbers = {1, 2, 3, 4}; // 명시적 타입
}
```
![스크린샷 2024-06-28 오전 1 36 00](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/acec9cf9-434e-488a-8d95-cf28b18cad57)

### Set과 List의 차이

- `Set` - 같은 요소가 포함되지 않음. 각각 하나의 요소만 있어야 할 때 사용.
- `List` - 같은 요소 포함 가능한 리스트.

```dart
void main(){
    var numbers = {1, 2, 3, 4}; // Set<int>
    numbers.add(1);
    numbers.add(1);
    numbers.add(1);
    print(numbers); // {1, 2, 3, 4}
}
```
```dart
void main(){
    var numbers = [1, 2, 3, 4]; // List<int>
    numbers.add(1);
    numbers.add(1);
    numbers.add(1);
    print(numbers); // [1, 2, 3, 4, 1, 1, 1]
}
```

<br>
<br>

## #3 FUNCTIONS

### #3.0 Defining a Function

- Dart는 진정한 객체 지향 언어이므로 함수도 객체이며 타입이 Function이다.

```dart
String sayHello(String name) {
  return "hello $name nice to meet you!";
}

// 상단과 같은 한줄짜리 함수(fat arrow syntax)
String sayHello(String name) => "hello $name nice to meet you!";

void main() {
  print(sayHello('gyou1')); // hello gyou1 nice to meet you!
}
```

<br>

한줄짜리 함수(fat arrow syntax) 추가 예시
```dart
num plus(num a, num b) => a + b;

void main(){
    print(plus(1, 2)); // 3
}
```

<br>
<br>

### #3.1 Named Parameters

- Dart의 function은 named parameter라는 것을 지원한다. (함수 인자 전달)


#### positional parameter 방식 사용 예시
- 인자 값이 여러개 일때는 가독성이 좋지 않아 권장하지는 않는 방법
- 작성 순서를 반드시 지켜야함.

```dart
String sayHello(String name, int age, String country){
  return "Hello $name, you are $age, and you com form $country";
}

void main(){
  print(
    sayHello('gyou1', 29, 'korea') // Hello gyou1, you are 29, and you com form korea
  );
}
```

<br>

### name argument 이용

name argument 이용해서 가독성을 개선(++ 파라미터 작성 순서도 노상관) 할 수 있으나,
<br> null safety가 적용되어서 null 일 수 있음을 알려주며 에러를 보여준다.
    
1. default value 지정하거나
2. required 필수값이라고 명시해줘서 해결한다.

<br>

null safety 에러 예시

![스크린샷 2024-06-28 오전 2 29 20](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/f7e39286-b00c-4bd3-8c74-23fb16043046)


### 1. default value 지정하여 null safety 오류 피하기
```dart
String sayHello({String name = 'g1', int age = 0, String country = 'everywhere'}){
  return "Hello $name, you are $age, and you com form $country";
}

void main(){
  print( // Hello g1, you are 0, and you com form everywhere
    sayHello() // null이지만 default 값 받아와서 실행.
  );
}

void main(){
  print( // Hello gyou1, you are 29, and you com form korea
    sayHello( // 작성 순서 상관 없음.
      name: 'gyou1',
      country: 'korea',
      age : 29,
    )
  );
}
```

### 2. required 필수 값 명시
```dart
String sayHello({required String name, required  int age, required  String country}){
  return "Hello $name, you are $age, and you com form $country";
}

void main(){
  print( // Hello gyou1, you are 29, and you com form korea
    sayHello(
      name: 'gyou1',
      age : 29,
      country: 'korea',
    )
  );
}
```

명시하지 않을 경우, 함수 자체 실행 X 에러

![스크린샷 2024-06-28 오전 2 18 58](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/86556ee0-cbde-4a10-be8d-9459482f1dc4)

<br>
<br>

### #3.2 Recap

1. **Positional parameters**
: 함수에 정의되어있는 파라미터 순서대로 들어감.

2. **named Parameters**
: 함수에 정의되어 있는 파라미터 순서를 지키지 않아도 됨.
<br>함수에 1. 디폴트값을 지정하거나, 2. Required modifier 를 써서 null 방지 가능

<br>
<br>

### #3.3 Optional Positional Parameters

1. positionam parameter - required (필수값)
2. named parameter - required (필수값)
3. `optional parameters` - option (default 값이 정해져 있는 옵션 값)

<br>

#### positional parameter 
- 순서에 맞춰서 입력해야함.

```dart
void main(){
    sayhello(1, 2, 3);
}
```

#### named parameter

```dart
void main(){
    sayhello({
        name: 1
    });
}
```

#### optional parameter

- null을 명시적으로 할당해야되냐 아니냐의 차이
- 대괄호를 통해 optional속성을 부여하고 ?를 통해 nullable state로 만들고 null일 때 default값 설정

```dart
String sayHello(String name, int age, [String? country = "korea"]) => 'Hello ${name}, You are ${age} from the ${country}';

void main() {
    var result = sayHello("gyou1", 10);
    print(result); // Hello gyou1, You are 10 from the korea
}
```

<br>
<br>

### #3.4 QQ Operator

### ??와 ?= 널 인지(null aware operator) 연산자

### 1. ?? 연산자 (Null Coalescing)

- question question 혹은 QQ operator라고 부른다.
- 왼쪽 값이 null인지 체크해서 만약 null이 아니면 왼쪽 값을 리턴하고 null이면 오른쪽 값을 리턴한다.

```dart
left ?? right
// left가 null이면 right return
// left가 null이 아니면 left return
```

<br>

단순 toUpperCase()를 사용한 name 기본 출력 함수, null 값 사용 X
```dart
String capitalizeName(String name) => name.toUpperCase();

void main(){
    print (capitalizeName('gyouwon')); // GYONWON
}
```

<br>

null 값 사용 버전
```dart
String capitalizeName(String? name) {
  if(name != null){
    return name.toUpperCase();
  }
  return 'G1';
}

void main(){
    print (capitalizeName('gyouwon')); // GYONWON
    // name이 null 값이 아닐때, G1 출력
}
```

<br>

null 값 사용 버전, 화살표 함수 사용 축약형
```dart
String capitalizeName(String? name) =>
  name != null ? name.toUpperCase() : 'G1';

void main(){
    print (capitalizeName('gyouwon')); // GYONWON
    // name이 null 값이 아닐때, G1 출력
}
```

<br>

null 값 사용 버전, ?? 사용 축약형
```dart
String capitalizeName(String? name) =>
  name?.toUpperCase() ?? 'G1';

void main(){
    print (capitalizeName('gyouwon')); // GYONWON
    // name이 null 값이 아닐때, G1 출력
}
```

<br>

### 2. ?= 연산자 (Assignment if Null)

- QQ equals 혹은 QQ assignment operator라고 불린다.
- 만약 왼쪽 값이 null이라면 오른쪽 값을 할당하여 출력.
- 이미 값이 있는 경우에는 그 값을 유지

<br>

```dart
void main(){
    String? name;
    name ??= 'gyou1';
    print(name); // gyou1;
}
```

<br>

변수에 이미 값이 있는 경우에는 그 값을 유지
```dart
void main(){
    String? name;
    name ??= 'gyou1';
    name ??= 'gyouwon';
    print(name); // gyou1;
}
```

<br>

변수에 값을 할당 받은 적이 있어도 그 다음에 null이 되면 마지막 ??= 값 할당 받아 출력.
```dart
void main(){
    String? name;
    name ??= 'gyou1';
    name = null;
    name ??= 'gyouwon';
    print(name); // gyouwon;
}
```

<br>
<br>

### #3.5 Typedef

- 자료형에 사용자가 원하는 alias를 붙일 수 있게 해준다. (자료형 이름의 별명을 만들 때 사용)
- 간단한 데이터(자료형)의 alias를 만들 때 사용. 더 구체적인건 class에서 다룰 예정.

<br>

typedef 사용 X 예시

```dart
List<int> reverseListOfNumbers(List<int> list){
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {
  print(reverseListOfNumbers([1, 2, 3]));// [3, 2, 1]
}
```

<br>

typedef 사용 예시 (상단과 동일한 함수)

```dart
typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(ListOfInts list){
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {
  print(reverseListOfNumbers([1, 2, 3]));// [3, 2, 1]
}
```

<br>

typedef 사용 예시 - Map

```dart
typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo){
  return "Hi ${userInfo['name']}";
}

void main() {
  print(sayHi({'name' : 'gyou1'})); // Hi gyou1
print(sayHi({'asdasdasdsadasdad' : 'g1'})); // null
}
```

<br>
<br>

## #4 CLASSES ★★★★★

### #4.0 Your First Dart Class

- dart의 Class에서 property를 선언할 때는 타입을 사용해서 정의한다.
- JS와 달리 new 연산자가 필요없고, 변수명이 겹치지 않는이상 this를 생략할 수 있다.

```dart
class Player{
    String name = 'gyou1';
    int xp = 1500;
}
void main(){
    var player = Player(); // new Player()라고 기재 가능하지만, 생략가능해서 쓸 필요 없음.
    print(player.name);// gyou1
    player.name = 'g1g1g1';
    print(player.name);// g1g1g1
}
```

<br>

`final` variable, property는 수정할 수 없기 때문에, player.name 값 변경 불가능 !
```dart
class Player{
    final name = 'gyou1';
    int xp = 1500;
}
void main(){
    var player = Player();
    print(player.name);// gyou1
}
```

<br>

- method내에서 같은 이름의 variable가 있어서 어쩔 수 없는 경우가 아닌 이상 this 생략.
- this.name이런식으로도 vaiable로 인식하여 작동은 하지만 사용하지 않는 것이 권고되고 있음.

```dart
class Player{
    final name = 'gyou1';
    int xp = 1500;

    void sayHello(){
        print("Hi my name is $name"); // this.name 작동은 되나 사용 X. 
    }
}
void main(){
    var player = Player();
    player.sayHello(); // Hi my name is gyou1
}
```
<br>

method내에서 같은 이름의 variable가 있어서 this를 사용해야하는 경우 예시
```dart
class Player{
    final name = 'gyou1';
    int xp = 1500;

    void sayHello(){
        var name = '121';
        print("Hi my name is ${this.name}"); // Hi my name is gyou1
        print("Hi my name is ${name}"); // Hi my name is 121
    }
}
void main(){
    var player = Player();
    player.sayHello();
}
```

<br>
<br>

### #4.1 Constructors

- dart에서 생성자(constructor) 함수는 클래스 이름과 같아야 한다.

```dart
class Player{
    late final name; // 변수의 값 나중에 받아오기.
    late int xp;

    Player(String name, int xp){ // 여러줄로 작성
      this.name = name; // 값을 할당하는 형태
      this.xp = xp;
    }

    void sayHello(){
      print("Hi my name is $name");
    }
}
void main(){
    var player = Player("gyou1", 1500);
    player.sayHello(); // Hi my name is gyou1
    var player2 = Player("gyouwon", 2500);
    player2.sayHello(); // Hi my name is gyouwon
}
```

<br>

constructor 코드를 작성하는 더 나은 방법
- late 사용하지 않고, 한줄로 축약하여 작성

```dart
class Player{
    final name;
    int xp;

    Player(this.name, this.xp); // 한줄로 작성
    // 함수 생성과 동시에 호출, 값 할당

    void sayHello(){
      print("Hi my name is $name");
    }
}
void main(){
    var player = Player("gyou1", 1500);
    player.sayHello(); // Hi my name is gyou1
    var player2 = Player("gyouwon", 2500);
    player2.sayHello(); // Hi my name is gyouwon
}
```

<br>
<br>

### #4.2 Named Constructor Parameters

class 안에 내용이 많아질수록 관리하기 어려워져,
<br>positional parameters(argument)보다 Named Constructor Parameters를 사용하여 순서 상관없이 작성하는 것이 더 가시성이 좋고 효율적이다.

#### positional parameters 사용
- class안에 내용이 많을때도 argument 작성 내용 순서를 기억해야하는 단점이 있다.

```dart
class Player{
    final name;
    int xp;
    String team;
    int age;

    Player(this.name, this.xp, this.team, this.age);

    void sayHello(){
      print("Hi my name is $name");
    }
}
void main(){
    var player = Player("gyou1", 1500, "red", 12); // 순서, 작성 내용을 기억해야함.
    player.sayHello(); // Hi my name is gyou1
    var player2 = Player("gyouwon", 2500, "blue", 13);
    player2.sayHello(); // Hi my name is gyouwon
}
```

<br>

#### Named Constructor Parameters 사용

- argument 작성 순서 상관 X
- 변수가 null일 수도 있기 때문에 required를 이용하거나 기본 값을 줘서 처리해 줘야한다. * 아래 예시는 required 사용.

```dart
class Player {
  final name;
  int xp;
  String team;
  int age;
  // int xp, age 이런식으로도 사용 가능

  Player({ // 변수가 null일 수도 있어서 required 사용
    required this.name, // Named Constructor Parameters
    required this.xp,
    required this.team,
    required this.age
  });

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player( // 작성 순서 상관 X
    name: "gyou1", 
    xp: 1500, 
    team: "red", 
    age: 12);
  player.sayHello(); // Hi my name is gyou1

  var player2 = Player(
    name: "gyouwon", 
    xp: 2500, 
    team: "blue", 
    age: 13);
  player2.sayHello(); // Hi my name is gyouwon
}
```

<br>
<br>

### #4.3 Named Constructors

#### named constructors

- Flutter에서 constructor를 만들때 많이 사용하는 패턴 중 하나이다.
- 각각의 `①`varible(변수)를 클래스로 보내면 `②`constructor(생성자)가 변수들을 `③`class property에 할당한다.
- 콜론(:)을 사용하면 특별한 생성자 함수를 만들 수 있다.
콜론을 넣음으로써 dart에게 여기서 객체를 초기화하라고 명령할 수 있다.

<br>

조금 다르게 동작하는 생성자(constructor) 함수를 여러개 만들고 싶다면 ?

#### 방법 1 - named 형식 
- required가 모두 기본으로 적용되지 않아 명시해줘야함.

#### 방법 2 - positional 형식 
- required가 모두 기본으로 적용됨.

```dart
class Player { // ③
  final String name;
  int xp, age;
  String team;

  Player({ // ②
    required this.name,
    required this.xp,
    required this.team,
    required this.age
  });

// 방법 1 - named 형식 - required가 모두 기본으로 적용되지 않아 명시해줘야함.
  Player.createBluePlayer({ // 중괄호
    required String name,
    required int age,
  }) : this.age = age, // Player 클래스 초기화
       this.name = name,
       this.team = "blue", // 기본값
       this.xp = 0; // 기본값

// 방법 2 - positional 형식 - required가 모두 기본으로 적용됨.
  Player.createRedPlayer(
    String name,
    int age,
  ) : this.age = age, // Player 클래스 초기화
      this.name = name,
      this.team = "red", // 기본값
      this.xp = 0; // 기본값

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() { // ①
// 방법 1 - named constructor
  var player = Player.createBluePlayer(
    name: "gyou1", 
    age: 12
    );
  player.sayHello(); // Hi my name is gyou1

// 방법 2 - positional constructor
  var redPlayer = Player.createRedPlayer("gyouwon", 13);
  redPlayer.sayHello(); // Hi my name is gyouwon
}
```

<br>
<br>

### #4.4 Recap

- Api로부터 여러 Player가 들어있는 목록을 받는다고 가정하여 Player class의 생성과 property 초기화.
- `fromJson` 이라는 named constructor 생성
- String인 key를 가지고, value는 dynamic인 Map 생성.(일종의 JSON 형식)


```dart
class Player {
  final String name;
  int xp;
  String team;

/* 
    fromJson 이라는 named constructor 생성, 
    String인 key를 가지고, value는 dynamic이다.(일종의 JSON 형식)
*/
  Player.fromJson(Map<String, dynamic> playerJson) : 
    name = playerJson['name'],
    xp = playerJson['xp'],
    team = playerJson['team'];

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var apiData = [
    {
      "name" : "A",
      "team" : "red",
      "xp" : 0
    },
    {
      "name" : "B",
      "team" : "blue",
      "xp" : 0
    },
    {
      "name" : "C",
      "team" : "pink",
      "xp" : 0
    },
  ];

  apiData.forEach((playerJson){
    var player = Player.fromJson(playerJson);
    player.sayHello();
    /*
        Hi my name is A
        Hi my name is B
        Hi my name is C
    */
  });
}
```

<br>
<br>

### #4.5 Cascade Notation

`syntax sugar`
- 반복되는 부분을 dart에서 간단하게 ..으로 해결하기 !
- class 생성 직후가 아니더라도 사용 가능.

예시코드 1)
```dart
class Player {
  String name;
  int xp;
  String team;

  Player({required this.name, required this.xp, required this.team});

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var abc = Player(name: "gyou1", xp: 0, team: 'red');
  abc.name = "g1";
  abc.xp = 100;
  abc.team = "pink";
}

// 상단과 동일한 코드 
void main() {
  var abc = Player(name: "gyou1", xp: 0, team: 'red')
  ..name = "g1"
  ..xp = 100
  ..team = "pink";
}

// class 생성 직후가 아니더라도 가능.
void main() {
  var abc = Player(name: "gyou1", xp: 0, team: 'red');
  var def = abc
  ..name = "g1"
  ..xp = 100
  ..team = "pink";
}

```

<br>
<br>

### #4.6 Enums

- enum은 코드를 작성할 때 값을 잘못 적지 않도록 실수를 방지해준다.
- enum type의 변수들은 해당 enum type에 생성된 값들 중에서만 값이 할당될 수 있다.

```dart
enum Team { red, blue }
enum XPLevel { beginner, medium, pro }

class Player {
  String name;
  XPLevel xp;
  Team team;

  Player({required this.name, required this.xp, required this.team});

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var abc = Player(name: "gyou1", xp: XPLevel.medium, team: Team.red);
  var def = abc
  ..name = "g1"
  ..xp = XPLevel.pro
  ..team = Team.blue;
}
```

하단과 같이 작성을 도와준다.

![스크린샷 2024-07-08 오후 11 38 25](https://github.com/1GYOU1/Dart-for-Beginners/assets/90018379/d8bbfba9-b8e8-4123-8d64-d4383d457e13)


<br>
<br>

### #4.7 Abstract Classes

- 추상화 클래스는 다른 클래스들이 직접 구현 해야하는 메소드들을 모아놓은 일종의 `청사진(blueprint)`이라 보면 된다.
- 추상 클래스에서는 기능을 구현하지 않는다.
- 상속받는 모든 클래스가 가지고 있어야 하는 메소드를 정의한다.
- 추상 클래스는 많이 사용하진 않지만 유용하다(?)고 한다 ~

```dart
// Human 추상화 클래스는 walk라는 메소드를 가지고 반환하는 형태.
abstract class Human {
  void walk();
}

enum Team { red, blue }
enum XPLevel { beginner, medium, pro }

class Player extends Human{
  String name;
  XPLevel xp;
  Team team;

  Player({required this.name, required this.xp, required this.team});

  void walk(){ // 없으면 에러남
    print('Im walking');
  }

  void sayHello() {
    print("Hi my name is $name");
  }
}

class Coach extends Human{
  void walk(){
    print('the coach is waling');
  }
}

void main() {
  var abc = Player(name: "gyou1", xp: XPLevel.medium, team: Team.red);
  var def = abc
  ..name = "g1"
  ..xp = XPLevel.pro
  ..team = Team.blue;
}
```

<br>
<br>

### #4.8 Inheritance

- 상속을 하고 : super를 이용해 확장한 부모 클래스의 생성자를 호출할 수 있다.
- @override를 이용해 부모 클래스의 객체를 받아올 수 있다.

```dart
class Human{
  final String name;
  Human(this.name);// 생성자
  void sayHello(){
    print("Hi my name is $name");
  }
}

enum Team { blue, red }

class Player extends Human{ // 확장하여 Human class를 모두 갖게 됨.
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name); // 확장한 부모 클래스 생성자를 의미

  @override // Human에서 온 sayHello를 새로 만든 메소드로 대체
  void sayHello(){
    super.sayHello(); // Human에서 상속
    print('and I play for ${team.name}'); // 새로운 메소드 추가
  }
}

void main(){
   var player = Player(team: Team.red, name: 'gyou1');
   player.sayHello();
   /*
    Hi my name is gyou1
    and I play for red
   */
}
```

<br>
<br>

### #4.9 Mixins

- 생성자가 없는 클래스를 의미한다.
- 클래스에 프로퍼티들을 추가할 때 사용
- Mixin 클래스는 상속을 할 때 extends를 하지 않고 with 를 사용한다.
- Mixin의 핵심은 여러 클래스에 재사용이 가능하다는 점이다.

#### with와 extend의 차이
- `Mixin`
    - with라는 키워드를 사용해서 Mixin 내부의 프로퍼티와 메소드들을 가져온다. 
    - 부모 클래스가 되거나 하진 않고, 뺏어오는 것이라고 보면 됨.
    - 생성자가 없는 클래스여야한다.
- `extend`
    - 확장한 그 클래스는 부모 클래스가 되는 것이다.
    - 자식클래스는 super를 통해서 접근할 수 있으며, 그 순간 부모 클래스의 인스턴스가 된다.

```dart
mixin Strong{
  final double strenghtLevel = 1500.99;
}

mixin QuickRunner{
  void runQuick(){
    print("runnnnnnn!");
  }
}

mixin Tall {
  final double height = 1.99;
}

enum Team { blue, red }

class Player with Strong, QuickRunner, Tall{
  final Team team;

  Player({
    required this.team,
  });
}

class Horse with Strong, QuickRunner{}

class kid with QuickRunner {}

void main(){
   var player = Player(team: Team.red);
   player.runQuick(); // runnnnnnn!
}
```