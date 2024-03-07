import 'package:flutter/material.dart';

class NormalListContent extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  NormalListContent({
    required this.imagePath,
    required this.title,
    required this.onTap
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
                  Text(title),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}