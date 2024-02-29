import 'package:http/http.dart' as http;
import 'dart:convert';

class Image_to_label {
  // 생성자로 받을 url
  String url;

  // 클래스(원하시는대로 늘리면 됩니다.)
  List<String> text_label = [
    'cat',
    'dog',
    'rabbit',
    'spoon',
    'computer',
    'tv',
    'mouse'
  ];

  // api주소(fetch로 json 송신 시도)
  String api_url = 'https://68b2-114-202-17-6.ngrok-free.app/';

  // 생성자
  Image_to_label(this.url);

  // map화
  Map<String, dynamic> toMap() => {'url': url, 'labels': text_label.join(', ')};

  // json 송신 후 label return 받기
  void get_label() async {
    // var real_url = Uri.https('thingproxy.freeboard.io', api);
    Uri real_url = Uri.parse(api_url);
    http.Response response = await http.post(real_url,
        headers: {
          'Content-Type': 'application/json',
          'ngrok-skip-browser-warning': '69420'
        }, // ngrok 배포 시
        body: jsonEncode(toMap()));

    // 리턴 받은 값 출력
    if (response.statusCode == 200) {
      print(response.body);
    }
  }
}

// 실행
void main() {
  // 이미지 URL을 통해 라벨 호출하는 코드
  Image_to_label(
          'https://health.chosun.com/site/data/img_dir/2023/07/17/2023071701753_0.jpg')
      .get_label();
}
