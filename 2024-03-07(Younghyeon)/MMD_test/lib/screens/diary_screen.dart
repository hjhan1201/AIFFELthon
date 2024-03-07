import 'package:mmd_test/state_bar/list.dart';
import '../state_bar/appbar_screen.dart';
import '../state_bar/bottom_screen.dart';
import '../screens/modify_screen.dart';
import '../screens/writing_screen.dart';
import 'package:flutter/material.dart';

class DiaryScreen extends StatelessWidget {
  const DiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar_screen(isMainScreen: false,),
      body: NormalListContent(
        imagePath: 'assets/images/dog.jpg',
        title: '귀여운 개',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ModifyScreen())
          );
        },
      ),
      bottomNavigationBar: BottomScreen(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF95E7DD),
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WritingScreen())
          );
        },
      ),
    );
  }
}