import 'package:flutter/material.dart';

class Style {
  static ButtonStyle mainButtonStyle1 = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8)
    ),
    primary: Colors.white, // 버튼의 배경색
    onPrimary: Colors.black, // 버튼 텍스트의 색상
    shadowColor: Colors.black, // 그림자 색상
    elevation: 1.0, // 입체감
    textStyle: TextStyle(
      fontWeight: FontWeight.bold, // 폰트 굵기
      fontSize: 10, // 폰트 크기
    ),
    padding: EdgeInsets.all(2), // 안쪽 패딩(여백)
    side: BorderSide(
      color: Colors.black, // 테두리 색상
      width: 1, // 테두리 두께
    ),
  );

  static ButtonStyle mainButtonStyle2 = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
    ),
    primary: Colors.black, // 버튼의 배경색
    onPrimary: Colors.white, // 버튼 텍스트의 색상
    shadowColor: Colors.black, // 그림자 색상
    elevation: 1.0, // 입체감
    textStyle: TextStyle(
      fontWeight: FontWeight.bold, // 폰트 굵기
      fontSize: 10, // 폰트 크기
    ),
    padding: EdgeInsets.all(2), // 안쪽 패딩(여백)
    side: BorderSide(
      color: Colors.white, // 테두리 색상
      width: 1, // 테두리 두께
    ),

  );
}

class CrashButton extends StatelessWidget{
  final VoidCallback onTap;

  CrashButton({
    required this.onTap,
  });
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.red, // 배경색 설정
          shape: BoxShape.rectangle,
        ),
        child: Icon(
          Icons.delete_outline,
          color: Colors.white,
        ),
      ),
    );
  }
}

