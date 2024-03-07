import 'package:flutter/material.dart';
import '../state_bar/appbar_screen.dart';
import '../state_bar/bottom_screen.dart';
import '../screens/dictionary_screen.dart';

class Dict_screen extends StatelessWidget {
  const Dict_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar_screen(isMainScreen: false,),
      body: ListView(
        padding: const EdgeInsets.only(top: 18),
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screen_Dict()),
              );
            },
            child: Container(
              color: Colors.grey[300],
              child: ListTile(
                contentPadding: EdgeInsets.zero, // ListTile 내용의 패딩을 제거합니다.
                title: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/dog.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30), // 이미지와 텍스트 사이 간격 조절
                    Text('귀여운 개'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomScreen()
    );
  }
}