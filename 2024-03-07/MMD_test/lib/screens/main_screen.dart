import 'package:flutter/material.dart';
import '../screens/camera.dart';
import '../screens/my_dictionary_screen.dart';
import '../screens/diary_screen.dart';
import '../style/content.dart';

class Content_List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/baneer.png',
          width: double.infinity,
          height: 167,
        ),
        SizedBox(
          height: 20,
        ),
        MainListContent(
          imagePath: 'assets/images/camera.png',
          title: '사물 촬영',
          description: '이미지를 촬영하여 검색 해봅시다.',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyCamera()),
            );
          },
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.grey.withOpacity(0.5),
        ),
        SizedBox(
          height: 16,
        ),
        MainListContent(
          imagePath: 'assets/images/dictionary.png',
          title: '나만의 사전',
          description: '저장한 단어들을 볼수 있어요.',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dict_screen()),
            );
          },
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.grey.withOpacity(0.5),
        ),
        SizedBox(
          height: 16,
        ),
        MainListContent(
          imagePath: 'assets/images/note.png',
          title: '나만의 일기',
          description: '오늘 배운 단어들과 연관지어 일기를 써보아요.',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DiaryScreen()),
            );
          },
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.grey.withOpacity(0.5),
        ),
      ],
    );
  }
}
