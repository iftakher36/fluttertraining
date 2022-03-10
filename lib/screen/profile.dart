import 'dart:convert';
import 'dart:io' as ioImage;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:second/Providers/data_provider.dart';

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
    setState(() {});
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
            child: Consumer<DashBoardProvider>(
              builder: (_, data, child) {
                return Text(data.counts.toString());
              },
            ),
          ),
          imageData == null
              ? Container()
              : Image.file(ioImage.File(imageData!.path))
        ],
      ),
    );
  }
}
