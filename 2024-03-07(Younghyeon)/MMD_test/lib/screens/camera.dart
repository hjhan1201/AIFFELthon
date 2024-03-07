import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../state_bar/appbar_screen.dart';
import '../state_bar/bottom_screen.dart';
import '../style/button.dart';

class MyCamera extends StatefulWidget {
  @override
  State<MyCamera> createState() => _MyCameraState();
}

class _MyCameraState extends State<MyCamera> {
  XFile? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _getImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _image = pickedFile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar_screen(isMainScreen: false,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30, width: double.infinity),
          _buildPhotoArea(),
          SizedBox(height: 20),
          _buildButton(),
        ],
      ),
      bottomNavigationBar: BottomScreen(),
    );
  }

  Widget _buildPhotoArea() {
    return _image != null
        ? Container(
      width: 300,
      height: 300,
      child: Image.file(File(_image!.path)),
    )
        : Container(
      width: 300,
      height: 300,
      color: Colors.grey,
    );
  }

  Widget _buildButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: Style.mainButtonStyle1.copyWith(fixedSize: MaterialStateProperty.all(Size(164, 42))),
          onPressed: () {
            _getImage(ImageSource.camera);
          },
          child: Text("카메라"),
        ),
        SizedBox(width: 30),
        ElevatedButton(
          style: Style.mainButtonStyle2.copyWith(fixedSize: MaterialStateProperty.all(Size(164, 42))),
          onPressed: () {
            _getImage(ImageSource.gallery);
          },
          child: Text("갤러리"),
        ),
      ],
    );
  }
}