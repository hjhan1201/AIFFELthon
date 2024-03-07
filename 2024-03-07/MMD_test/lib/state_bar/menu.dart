import 'package:flutter/material.dart';
import '../screens/camera.dart';
import '../screens/diary_screen.dart';
import '../screens/my_dictionary_screen.dart';
import '../main.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 120,
            child: const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF95E7DC),
              ),
              child: Text(
                  'My Memory Dictionary',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('홈'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()), // MyCamera 클래스를 가진 페이지로 이동
              );
            },
          ),
          ListTile(
            title: const Text(
              '사물 촬영',
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyCamera()), // MyCamera 클래스를 가진 페이지로 이동
              );
            },
          ),
          ListTile(
            title: const Text('나만의 사전'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dict_screen()), // MyCamera 클래스를 가진 페이지로 이동
              );
            },
          ),
          ListTile(
            title: const Text('나만의 일기'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DiaryScreen()), // MyCamera 클래스를 가진 페이지로 이동
              );
            },
          ),
        ],
      ),
    );
  }
}
