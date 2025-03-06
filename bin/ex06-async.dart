import "dart:convert";  // json 컨버트를 위한 라이브러리 임포트
import "dart:async"; //StreamController 사용을 위한 라이브러리 임포트
// 비동기 시뮬레이션
// API 서버가 사용자 정보 JSON을 반환한다고 가정

String jsonString = '{"name": "홍길동", "age": 25, "isThief": true}';

Future<Map<String, dynamic>> fetchUserData() async {
  await Future.delayed(Duration(seconds: 2)); // 2초 대기
  return jsonDecode(jsonString);
}

testAsync() async {
  print("사용자 정보 요청...");
  var user = await fetchUserData();
  print("수신 데이터: $user");
}

// Stream
// Stream은 비동기적으로 순서가 있는 데이터를 받아오는 객체
// 실시간 데이터, 파일 읽기, 네트워크 요청 등에 활용
Stream<int> counterStream(int max) async* { // async* -> Generator 표시
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1)); // 1초 대기
    yield i;  // 데이터를 요청할 때 생성하여 보내는 역할
  }
}

testStream() async {
  var stream = counterStream(10);
      await for (final number in stream) {
    print("수신데이터: $number");
  }
}

// StreamController: Stream을 생성하고 데이터를 추가하는 역할(Publisher)
// dart:async 라이브러리에 포함
testStreamController() {
  final controller = StreamController<String>();

  // 데이터 구독 (Subscribe)
  controller.stream.listen((data) => print("받은 데이터: $data"),
                        onError: (err) => print("에러 발생: $err"),
                        onDone: () => print("데이터 수신 완료"));

  // 데이터 발행
  controller.sink.add("첫 번째 발생 데이터");
  controller.sink.add("두 번째 발생 데이터");
  controller.sink.add("세 번째 발생 데이터");

  // 메모리 누수 방지를 위해서 닫아주자
  controller.sink.close();
}

main() {
  // testAsync();
  // testStream();
  testStreamController();
}