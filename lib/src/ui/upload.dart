import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class UploadFiles extends StatefulWidget {
  @override
  _UploadFilesState createState() => _UploadFilesState();
}

class _UploadFilesState extends State<UploadFiles> {
  Dio dio = new Dio();
  final picker = ImagePicker();
  File selectedfile;
  String _path = null;

  selectfile() async {
    final file = await picker.getImage(
        source: ImageSource.gallery,
        maxHeight: 500,
        maxWidth: 500,
        imageQuality: 50);

    setState(() {
      _path = file.path;
    });
  }

  upload() async {
    String url =
        "http://149.129.220.30:8080/apihijrahmerchant/v1/masjid/upload/ktp";

    FormData data = FormData.fromMap(
        {"foto_ktp_pj_masjid": await MultipartFile.fromFile(_path)});
    dio
        .post(url, data: data)
        .then((response) => print(response))
        .catchError((error) => print(error));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        _path == null ? Image.asset("images/p.jpg") : Image.file(File(_path)),
        TextButton(
          child: Text('data'),
          onPressed: () {
            selectfile();
          },
        ),
        TextButton(
          child: Text('upload'),
          onPressed: () {
            upload();
          },
        ),
      ]),
    );
  }
}
