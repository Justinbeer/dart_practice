// List: 순서가 있고 중복 허용, 인덱스로 접근 가능
testList() {
  // List 생성
  List<int> numbers = [1, 2, 3, 4, 5];
  print("원본: $numbers");

  // 요소 추가
  numbers.add(6);
  print("add 후: $numbers");

  // 여러 개의 요소 추가
  numbers.addAll([7, 8, 9]);
  print("addAll 이후: $numbers");

  // 삽입
  numbers.insert(0, 0);
  print("insert 이후: $numbers");

  // 객체 삭제
  numbers.remove(0); // 0 삭제
  print("remove 이후: $numbers");

  // 특정 위치 요소 삭제
  numbers.removeAt(2); // 2번 인덱스 요소 제거
  print("removeAt 이후: $numbers");

  // 리스트의 길이
  print("길이: ${numbers.length}");

  // 비우기
  numbers.clear();
  print("clear 이후: $numbers");

}

testSet() {
  // Set 생성
  // 순서없음 -> 인덱스 없음, 중복 허용 않음
  Set<int> numbers = {1, 2, 3, 4, 5};
  print("원본 Set: $numbers");

  // 요소 추가
  numbers.add(6);
  print("add 후: $numbers");

  // 여러 요소 추가
  numbers.addAll({7, 8, 9});
  print("addAll 이후: $numbers");

  // index 없음 -> insert 없음, removeAt 없음

  // 요소 삭제
  numbers.remove(5); // 요소 5 삭제
  print("remove 이후: $numbers");

  // 요소 갯수
  print("요소 갯수: ${numbers.length}");

  // Set 비우기
  numbers.clear();
  print("clear 이후: $numbers");
}

testMap() {
  //  Map: 순서 없음, Key-Value 쌍으로 관리, Key는 중복될 수 없음
  //  Map 생성
  Map<String, int> ages = {'Alice': 25,
    'Bob': 30,
    'Charlie': 35};
  print("원본 맵: $ages");

  //  Map에 요소 추가
  ages['David'] = 40;
  print("추가 이후: $ages");

  //  Map에 여러 요소 추가
  ages.addAll({'Evan': 45, 'Frank': 50});
  print("addAll 이후: $ages");

  //  요소 제거 (키 활용)
  ages.remove('Charlie');
  print("remove 이수: $ages");

  //  요소의 갯수
  print("요소의 갯수: ${ages.length}");

  //  비우기
  ages.clear();
  print("clear 후: $ages");
}
main() {
  // testList();
  // testSet();
  testMap();
}
