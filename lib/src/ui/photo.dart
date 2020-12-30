import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:camera/camera.dart';
import 'package:loginandqr/src/ui/take_picture.dart';

class PhotoPage extends StatefulWidget {
  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  String _path = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Take Photo'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _path == null
                ? Image.asset("images/p.jpg")
                : Image.file(File(_path)),
            FlatButton(
              onPressed: () {
                _showOptions(context);
              },
              child:
                  Text("Take Picture", style: TextStyle(color: Colors.white)),
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            )
          ],
        ),
      )),
    );
  }

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 120,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.photo_camera),
                  title: Text("Take a photo from camera"),
                ),
                ListTile(
                  leading: Icon(Icons.photo_library),
                  title: Text("Choose from gallery"),
                  onTap: () {
                    Navigator.pop(context);
                    _showPhotoLibrary();
                  },
                )
              ],
            ),
          );
        });
  }

  void _showPhotoLibrary() async {
    final file = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _path = file.path;
    });
  }

  void _showCamera() async {
    final cameras = await availableCameras();
    final camera = cameras.first;

    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TakePicturePage(camera: camera)));
    setState(() {
      _path = result;
    });
  }
}
