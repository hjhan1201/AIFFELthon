import 'package:flutter/material.dart';
import '../state_bar/appbar_screen.dart';
import '../state_bar/bottom_screen.dart';

class Screen_Dict extends StatelessWidget {
  const Screen_Dict({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar_screen(isMainScreen: false,),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 12,
            ),
            Container(
              width: 240,
              height: 240,
              color: Colors.grey.withOpacity(0.5),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text('Label'),
                  width: 280,
                  height: 60,
                  color: Colors.grey.withOpacity(0.5),
                ),
                SizedBox(
                  width: 12,
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: Text(
                      'Sound'
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Stack(
              children: [
                Container(
                  child: Text('Text'),
                  width: double.infinity,
                  height: 400,
                  color: Colors.grey.withOpacity(0.5),
                ),
                Positioned(
                  right: 20,
                  top: 20,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text(
                        'Change'
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomScreen(),
    );
  }
}