

// Generic 클래스 선언
class GenericBox<T> {
  // 필드 데이터
  T _value; // 타입이 정해지지 않은 private 멤버

  // 생성자
  GenericBox(this._value);

  // Getter
  T get value => _value;

  // Setter
  set value(T newValue) {
    _value = newValue;
  }
}

testGenericBox() {
  GenericBox<int> intBox = GenericBox<int>(42);
  print("intBox: ${intBox.value}");
  GenericBox<double> dBox = GenericBox<double>(3.14159);
  print("dBox: ${dBox.value}");
  GenericBox<String> strBox = GenericBox<String>("Dart");
  // strBox.value = 2025; // 들어갈수없다
  print("strBox: ${strBox.value}");
}

// Generics extends, super를 이용한 타입 제한
class NumberBox<T extends num> { // num를 extends 한 T
  T value;
  NumberBox(this.value);
  double square() {
    return value.toDouble() * value.toDouble();
  }
}

testNumberBox() {
  NumberBox<int> intBox = NumberBox<int>(5);
  print(intBox.square());
  NumberBox<double> dBox = NumberBox<double>(3.14159);
  print(dBox.square());
  // NumberBox<String> sBox = NumberBox<String>("5");
  // String은 num를 확장하지 않음
}

main() {
  // testGenericBox();
  testNumberBox();
}