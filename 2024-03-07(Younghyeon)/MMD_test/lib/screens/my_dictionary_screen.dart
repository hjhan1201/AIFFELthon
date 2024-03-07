import 'package:flutter/material.dart';
import 'package:mmd_test/screens/modify_screen.dart';
import 'package:mmd_test/state_bar/list.dart';
import '../state_bar/appbar_screen.dart';
import '../state_bar/bottom_screen.dart';
import '../screens/dictionary_screen.dart';

class Dict_screen extends StatelessWidget {
  const Dict_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar_screen(isMainScreen: false,),
      body: NormalListContent(
        imagePath: 'assets/images/dog.jpg',
        title: '개',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Screen_Dict())
          );
        },
      ),
      bottomNavigationBar: BottomScreen()
    );
  }
}