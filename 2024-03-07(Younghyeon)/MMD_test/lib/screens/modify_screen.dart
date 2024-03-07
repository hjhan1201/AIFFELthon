import '../state_bar/appbar_screen.dart';
import '../state_bar/bottom_screen.dart';
import 'package:flutter/material.dart';

class ModifyScreen extends StatelessWidget {
  const ModifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar_screen(isMainScreen: false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 240,
            height: 240,
            color: Colors.grey[300],
            margin: EdgeInsets.all(20),
            child: Center(
              child: Text(
                'Image',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('음성 녹음 버튼 click');
            },
            child: Text(
              '녹음 파일 듣기',
              style: TextStyle(fontSize: 18), // 글자 크기를 조정
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
              minimumSize: MaterialStateProperty.all<Size>(
                Size(160, 40), // 가로 120, 세로 40으로 크키 조정
              ),
            ),
          ),
          Padding(
            // 상하좌우로 띄워주기
            padding: const EdgeInsets.all(20),
            child: Container(
              width: 400,
              height: 48,
              color: Colors.grey[300],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Container(
                width: 400,
                height: 145,
                color: Colors.grey[300],
              )
          ),

          ElevatedButton(
            onPressed: () {
              print('수정하기 버튼 click');
            },
            child: Text(
              '수정하기',
              style: TextStyle(fontSize: 18), // 글자 크기를 조정
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(200, 40), // 가로 120, 세로 40으로 크키 조정
                )
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomScreen(),
    );
  }
}