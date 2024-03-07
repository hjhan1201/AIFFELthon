import 'package:flutter/material.dart';

class BottomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF006E63),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz), // 예시로 추가된 4번째 항목
          label: 'More',
        ),
      ],
      selectedItemColor: Color(0xFF95E7DC), // 선택된 항목의 색상을 흰색으로 지정합니다.
      unselectedItemColor: Colors.white,
      iconSize: 24,
    );
  }
}
