import 'package:flutter/material.dart';

class Appbar_screen extends StatelessWidget implements PreferredSizeWidget {
  final bool isMainScreen; // main_screen.dart에서만 메뉴 버튼을 사용할지 여부

  const Appbar_screen({Key? key, required this.isMainScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF95E7DD),
      title: Text('My Memory Dictionary',
          style: TextStyle(
              color: Colors.black
          ),
      ),
      centerTitle: true,
      leading: isMainScreen ? _buildMenuButton(context) : _buildBackButton(context), // 삼항 연산자 boolean 조건 ? 무엇True : 무엇False
      actions: <Widget>[
        // IconButton(
        //   icon: Image.asset(
        //     'assets/images/search.png',
        //     width: 24,
        //     height: 24,
        //   ),
        //   color: Colors.black,
        //   onPressed: () {
        //     print('Search button is clicked');
        //   },
        // ),
        IconButton(
          icon: Image.asset(
            'assets/images/profile.png',
            width: 24,
            height: 24,
          ),
          color: Colors.black,
          onPressed: () {
            print('Profile button is clicked');
          },
        ),
      ],
      // main_screen.dart에서는 메뉴 버튼, 나머지에서는 뒤로가기 버튼 사용
    );
  }

  // 메뉴 버튼 생성
  Widget _buildMenuButton(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.menu,
        size: 24,
        color: Colors.black,
      ),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }

  // 뒤로가기 버튼 생성
  Widget _buildBackButton(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pop(context); // 이전 화면으로 이동
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
