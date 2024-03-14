import 'package:http/http.dart' as http;
import 'dart:convert';

class Image_to_label {
  // 생성자로 받을 url
  String url;

  // 클래스(조정하시면 됩니다.)
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
  String api_url = 'https://5c90-114-202-17-6.ngrok-free.app/';

  // 생성자
  Image_to_label(this.path);

  // map화
  Map<String, dynamic> toMap() => {'path': path, 'labels': text_label.join(',')};

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
          'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzEyMTNfMTIx%2FMDAxNzAyNDc2OTIwMzQ2.36EDpNM_U-MQ5LNQE_3QWkIf1jU2fSx0VbzQDffK_9cg.wjOxtDWb2NGvwOfb0zoSdTHU9yqceUWEmzI8lTt-paAg.JPEG.candle0730%2F%25B0%25B3_%25B6%25CB%25B2%25BF.jpg&type=sc960_832')
      .get_label();
}
