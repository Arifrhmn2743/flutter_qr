import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/p.jpg"),
          ),
          FlatButton(
            onPressed: () {
              _showOptions(context);
            },
            child: Text("Take Picture", style: TextStyle(color: Colors.white)),
            color: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )
        ],
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
}
