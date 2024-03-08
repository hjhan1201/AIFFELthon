import 'package:flutter/material.dart';
import 'package:mmd_test/style/button.dart';

class MainListContent extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback onTap;

  const MainListContent({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 80,
            height: 80,
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            width: 256,
            height: 100,
            padding: EdgeInsets.only(top: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NormalListContent extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;
  final VoidCallback buttonTap;

  NormalListContent({
    required this.imagePath,
    required this.title,
    required this.onTap,
    required this.buttonTap
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 18),
      children: <Widget>[
        InkWell(
          onTap: onTap,
          child: Container(
            color: Colors.grey[300],
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Stack(
                    children:[
                      Container(
                        width: 280,
                        height: 100,
                        child: Text(
                            title,
                        ),
                      ),
                      Positioned(
                          right: 10,
                          top: 5,
                          child:CrashButton(onTap: buttonTap)
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ContentLine extends StatelessWidget {
  const ContentLine({super.key});
  @override
  Widget build(BuildContext context){
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.black.withOpacity(0.5),
    );
  }
}