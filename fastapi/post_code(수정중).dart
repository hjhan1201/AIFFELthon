import 'package:http/http.dart' as http;
import 'dart:convert';

class Image_to_label {
  // 생성자로 받을 url
  String url;

  // 클래스
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
  String api_url = '/fetch/https://127.0.0.1:5000/images=';

  // 생성자
  Image_to_label(this.url);

  // map화
  Map<String, dynamic> toMap() => {'url': url, 'labels': text_label.join(', ')};

  // json 송신 후 label return 받기
  void get_label() async {
    String api = api_url + url;
    print(api);
    var real_url = Uri.https('thingproxy.freeboard.io', api);
    http.Response response = await http.post(real_url,
        headers: {
          'Content-Type': 'application/json',
          // 'ngrok-skip-browser-warning': '69420'
        }, // ngrok 배포 시
        body: jsonEncode(toMap()));

    // 리턴 받은 값 출력
    if (response.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(response.body);
      print(map['label']);
    }
  }
}

// 실행
void main() {
  Image_to_label(
          'health.chosun.com/site/data/img_dir/2023/07/17/2023071701753_0.jpg')
      .get_label();
}
