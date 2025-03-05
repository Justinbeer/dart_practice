numbers() {
  print("Numbers\t-----");

  int age = 25; //  정수형
  double height = 175.5;  //  실수형

  print("age: $age, height: $height");

  //  num는 int, double 상위 타입
  num age2 = 25;
  num height2 = 175.5;

  print("age2: $age2, height: $height2");
}

strings() {
  print("Strings\t-----");

  //  문자열 선언 : ", '
  String name = "홍길동";
  String message = 'Hello, World!';

  //  문자열 보간 : 문자열 내에 변수, 표현식 결과 포함시킨다.
  String greeting = "Hello, $name";
  String calc = 'Sum: ${ 2 + 3 }';

  print("greeting: $greeting, calc: $calc");

  //  여러 줄 문자열 : 특수 문자 포함 여러줄 문자열 생성
  String multilines = """
이것은
여러 줄 문자열입니다
  """;
  print(multilines);

  //  문자열 메서드 예시
  print("원본문자열: $message");
  print("문자열 길이: ${message.length}");
  print("소문자: ${message.toLowerCase()}");
  print("대문자: ${message.toUpperCase()}");

  print("문자열 포함 여부: ${message.contains("Hello")}");
  print("문자열 포함 여부: ${message.contains("hello")}");

  //  문자열 분할
  String fruits = "사과,배,바나나,포도";
  List<String> fruitList = fruits.split(",");  //  ,를 기준으로 분리
  print("원본 문자열: $fruits");
  print("분할된 문자열: $fruitList");
}

booleans() {
  //  true or false
  //  비교 연산, 논리 연산의 결과 -> 흐름 제어 (조건 분기, 반복문에 활용)
  bool isTrue = true;
  bool isFalse = false;

  print("isTrue: $isTrue, isFalse: $isFalse");

  bool isGreater = 10 > 5;
  bool isEqual = 5 == 5;

  print("10 > 5 ? : $isGreater, 5 == 5 ? : $isEqual");
}

typeCheck() {
  print("Type Chekc\t-----");

  //  var : 첫 번째 값이 할당될 때 타입이 결정되고 고정된다
  var num = 42;
  var message = "Hello";

  print("num is ${num.runtimeType}");
  print("message is ${message.runtimeType}");

  //  실제 타입체크는 is, is! 연산자로 수행
  print("num is int ? : ${num is int}" );
  print("message is int ? : ${message is int}" );
  print("message is not int ? : ${message is! int}");
}

typeInference() {
  // var, dynamic
  // var: 데이터 할당시 타입 결정되고 고정
  // dynamic: 실행 중 마음대로 타입이 결정되고 변경
  var name = "홍길동"; // String 타입으로 추론되고 고정
  // name = 42; // 다른 데이터 타입으로 변경 될 수 없음
  var age = 42; // int 타입으로 추론
  print("name: $name -> ${name.runtimeType}");
  print("age: $age -> ${age.runtimeType}");

  // 동적 타입
  dynamic value = "홍길동"; // 모든 타입이 할당되고 고정되지 않음
  print("value: $value -> ${value.runtimeType}");
  value = 42; // int
  print("value: $value -> ${value.runtimeType}");
  value = 7 > 3; // boolean
  print("value: $value -> ${value.runtimeType}");
  value = [1, 2, 3, 4, 5]; // List<int>
  print("value: $value -> ${value.runtimeType}");
}

nullSafety() {
  print("Null Safety\t-------");
  // 기본적으로는 null은 변수에 할당이 불가
  // String val = null;
  String? nullableName = null; // ? -> nullable 변수 표시
  print("nullableName: $nullableName");

  // String Name = null; // 오류 발생
  String name = "홍길동";
  print("name: $name");

  // ! 연산자 -> 변수가 null이 아님을 확신함 -> 주의해서 사용
  print("name: ${name!.length}");
}

constants() {
  print("Constants\t-----");

  // const: 컴파일 타임 상수
  const double PI = 3.14159;

  // final: 런타임 상수
  final String today = DateTime.now().toString();
  final DateTime someday = DateTime(2012, 9, 24);

  print("PI: $PI");
  print("Today: $today");
  print("Someday: $someday");
}


main() {
  // numbers();  //  숫자형 예제
  // strings();  //  문자형 예제
  // booleans(); //  논리형 예제

  // typeCheck();  //  변수 타입 체크
  // typeInference(); // 타입 추론

  // nullSafety(); // 널 안전성
  constants();
}