class Animal {
  //  인스턴스 변수
  String name;

  //  생성자
  Animal(this.name);

  //  메서드
  void makeSound() {
    print("Some sound");
  }
}

//  Dart에서는 모든 클래스가 암시적으로 인터페이스 역할 수행할 수 있다.
//  별도의 interface 키워드 없음
//  Dart에서는 abstract나 mixin으로 인터페이스를 구현할 수 있다.
//  extends 하면 상속,
//  implements 하면 인터페이스로 작동한다

abstract class Flyable {
  void fly(); //  선언부만 작성, 구현은 하지 않음
}

//  상속 : extends
class Dog extends Animal implements Flyable {
  //  Animal로부터 멤버와 메서드를 상속
  //  생성자
  Dog(String name): super(name);

  @override
  void makeSound() {
    print("멍멍");
  }

  @override
  void fly() {
    print('Dog $name is flying');
  }
}

class Cat extends Animal implements Flyable {
  //  생성자
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print("야옹!");
  }

  @override
  void fly() {
    print("Cat $name is flying");
  }
}

testExtends() {
  var dog = Dog("멍멍이");
  dog.makeSound();

  var cat = Cat("야옹이");
  cat.makeSound();

  dog.fly();
  cat.fly();
}

//  Mixin 예제
//   로깅기능, 타이머 기능을 믹스인으로 만들어서
//  필요한 클래스에 추가하는 예제
mixin Logger {
  void log(String message) {
    print("[LOG]: $message");
  }
}

mixin Timer {
  void startTimer() {
    print("Timer started...");
    print("begin: ${DateTime.now()}");
  }

  void stopTimer() {
    print("Timer stopped...");
    print("end: ${DateTime.now()}");
  }
}

class MyApp with Logger, Timer {
  //  Future 객체: 실행을 지연시킴(나중에 수행)
  Future<void> run() async {
    log("MyApp is running..."); //  Logger mixin
    startTimer(); //  Timer mixin

    await Future.delayed(Duration(seconds: 3), () {
      print("3초 뒤에 콜백 발생!");
    });

    stopTimer();  //  Timer mixin

    log("MyApp is stopped!");
  }
}

testMixin() async {
  print("--- mixin 테스트 시작 ---");
  final app = MyApp();
  await app.run();
  print("--- mixin 테스트 종료 ---");
}

main() {
  // testExtends();
  testMixin();
}