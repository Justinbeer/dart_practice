//  클래스 정의
class Person {
  //  인스턴스 변수
  String name;
  int age;

  //  생성자
  Person(this.name, this.age);

  //  메서드
  void introduce() {
    print("안녕하세요, 저는 $name이고 $age살입니다.");
  }
}

testClass() {
  //  클래스 인스턴스 생성
  var person = Person("홍길동", 25); //  new는 하지 않는다
  print("${person.runtimeType}");
  //  메서드 호출
  person.introduce();
}

//  확장된 클래스
class PersonEx {
  //  private 인스턴스 변수
  String _name;
  int _age;

  //  생성자
  PersonEx(this._name, this._age);

  //  private 변수를 위한 getter
  String get name => _name;
  int get age => _age;
  //  private 변수를 위한 setter
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    }
  }
  set age(int value) {
    if (value >= 0) {
      _age = value; //  0보다 커야 세팅한다
    }
  }

  //  private 메서드
  void _validateAge() {
    if (_age < 0) {
      throw Exception("나이는 음수가 될 수 없습니다.");
    }
  }

  //  public 메서드
  void introduce() {
    _validateAge(); //  private 메서드 호출
    print("안녕하세요, 저는 $_name이고, $_age살입니다.");
  }
}

testClassEx() {
  var person = PersonEx("홍길동", 25);
  print("이름: ${person.name}");  //  getter
  print("나이: ${person.age}");   //  getter

  person.name = "김철수";          //  setter 호출
  person.age = 30;                //  setter 호출

  person.introduce(); //  퍼블릭 메서드 호출
}

//  명명된 생성자
//  dart는 기본 생성자는 1개만 허용됨
//  다른 언어처럼 생성자 오버로딩이 불가
class Point {
  //  인스턴스 변수
  double x, y;

  //  기본 생성자
  Point(this.x, this.y);

  //  명명된 생성자 : 초기화 리스트 사용
  Point.origin()
      : x = 0,
        y = 0;

  Point.fromJson(Map<String, double> json)
      : x = json['x'] ?? 0, y = json['y'] ?? 0;
}

testClassNamed() {
  var p1 = Point(2.0, 3.0); //  기본 생성자 사용
  var p2 = Point.origin();  //  명명된 생성자 사용
  var p3 = Point.fromJson({"x": 10, "y": 20});  //  명명된 생성자 사용

  print("p1: (${p1.x}, ${p1.y})");
  print("p2: (${p2.x}, ${p2.y})");
  print("p3: (${p3.x}, ${p3.y})");
}

main() {
  // testClass();  //  클래스의 인스턴스 생성과 메서드 호출
  // testClassEx();  //  private 멤버와 메서드
  testClassNamed();
}