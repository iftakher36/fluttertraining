import 'dart:convert';
import 'dart:io' as ioImage;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final ImagePicker _picker = ImagePicker();
  XFile? imageData;
  String? data;

  void pickImage() async {
    imageData = await _picker.pickImage(
        source: ImageSource.camera,
        maxHeight: 500,
        maxWidth: 500,
        imageQuality: 100,
        preferredCameraDevice: CameraDevice.front);
    final bytes = ioImage.File(imageData!.path).readAsBytesSync();
    data = base64Encode(bytes);
    print(data);
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              pickImage();
            },
            child: const Text("Profile"),
          ),
          imageData == null
              ? Container()
              : Image.file(ioImage.File(imageData!.path))
        ],
      ),
    );
  }
}
