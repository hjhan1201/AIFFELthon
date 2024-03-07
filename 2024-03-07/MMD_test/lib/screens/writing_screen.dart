import '../state_bar/appbar_screen.dart';
import '../state_bar/bottom_screen.dart';
import 'package:flutter/material.dart';

class WritingScreen extends StatelessWidget {
  const WritingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar_screen(isMainScreen: false),
      body: SingleChildScrollView(
        child: Column(
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
                '음성 녹음',
                style: TextStyle(fontSize: 18), // 글자 크기를 조정
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(140, 40), // 가로 120, 세로 40으로 크키 조정
                ),
              ),
            ),
            Padding(
              // 상하좌우로 띄워주기
              padding: const EdgeInsets.all(20),
              child: TextField(
                style: TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey), // 선 색상 지정
                  ),
                  contentPadding: EdgeInsets.all(3),
                  filled: true,
                  fillColor: Colors.grey[200], //회색 배경색
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextField(
                style: TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  labelText: 'Text',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey), // 선 색상 지정
                  ),
                  contentPadding: EdgeInsets.all(3),
                  filled: true,
                  fillColor: Colors.grey[200], //회색 배경색
                ),
                minLines: 6,
                maxLines: 6,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('맞춤법 검사 버튼 click');
                  },
                  child: Text(
                    '맞춤법',
                    style: TextStyle(fontSize: 18), // 글자 크기를 조정
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                      minimumSize: MaterialStateProperty.all<Size>(
                        Size(140, 40), // 가로 120, 세로 40으로 크키 조정
                      )
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('저장 버튼 click');
                  },
                  child: Text(
                    '저장',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    minimumSize: MaterialStateProperty.all<Size>(
                        Size(140, 40)
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomScreen(),
    );
  }
}