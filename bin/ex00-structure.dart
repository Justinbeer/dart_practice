// dart 프로그램의 구조

// 함수 : 입력(매개변수) -> 연산(로직블록) -> 출력(return)
// 반환타입 함수명(매개변수 목록)
// 반환할 데이터가 없을때는 void(생략가능)
greeting() {
  print("Hello, Dart!");
}
// 숫자 2개를 합산해서 돌려주는 함수
// int(정수), double(실수), num(숫자)
double add(int a, double b) {
  return a + b;
}
// 엔트리포인트 : main 함수
void main() {
  // 함수 호출
  greeting();

  int num1 = 10; // dart는 정적 타입 언어
  var num2 = 3.14159; // var 키워드 : 타입 추론 기능

  double result = add(num1, num2);
  print('$num1 + $num2 = $result'); // 문자열 보관
}