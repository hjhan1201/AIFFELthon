import 'package:flutter/material.dart';
import 'state_bar/appbar_screen.dart';
import 'screens/main_screen.dart';
import 'state_bar/bottom_screen.dart';
import 'state_bar/menu.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar_screen(isMainScreen: true),
      drawer: MenuScreen(),
      body: ListView(
        children:[
          Content_List(),
        ],
      ),
      bottomNavigationBar: BottomScreen(),
    );
  }
}