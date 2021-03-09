import 'package:flutter/material.dart';
//import 'package:permission_handler/permission_handler.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool _accept = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/upload');
                      },
                      color: _accept ? Colors.green : Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                      child: Text(
                        "Check Permission",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox.fromSize(
                        size: Size(100, 100), // button width and height
                        child: ClipOval(
                          child: Material(
                            color: Colors.blueAccent, // button color
                            child: InkWell(
                              splashColor: Colors.black, // splash color
                              onTap: () {
                                Navigator.pushNamed(context, '/scan');
                              }, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.qr_code_scanner,
                                    size: 50,
                                    color: Colors.white,
                                  ), // icon
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Scan",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ), // text
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox.fromSize(
                        size: Size(100, 100), // button width and height
                        child: ClipOval(
                          child: Material(
                            color: Colors.blueAccent, // button color
                            child: InkWell(
                              splashColor: Colors.black, // splash color
                              onTap: () {
                                Navigator.pushNamed(context, '/maps');
                              }, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.map,
                                    size: 50,
                                    color: Colors.white,
                                  ), // icon
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Maps",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ), // text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ))
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox.fromSize(
                      size: Size(100, 100), // button width and height
                      child: ClipOval(
                        child: Material(
                          color: Colors.blueAccent, // button color
                          child: InkWell(
                            splashColor: Colors.black, // splash color
                            onTap: () {
                              Navigator.pushNamed(context, '/photo');
                            }, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.photo_camera,
                                  size: 50,
                                  color: Colors.white,
                                ), // icon
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    "Take Photo",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  ),
                                ), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox.fromSize(
                      size: Size(100, 100), // button width and height
                      child: ClipOval(
                        child: Material(
                          color: Colors.blueAccent, // button color
                          child: InkWell(
                            splashColor: Colors.black, // splash color
                            onTap: () {
                              Navigator.pushNamed(context, '/vibrate');
                            }, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.vibration,
                                  size: 50,
                                  color: Colors.white,
                                ), // icon
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    "Vibrate Test",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  ),
                                ), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox.fromSize(
                      size: Size(100, 100), // button width and height
                      child: ClipOval(
                        child: Material(
                          color: Colors.blueAccent, // button color
                          child: InkWell(
                            splashColor: Colors.black, // splash color
                            onTap: () {
                              Navigator.pushNamed(context, '/fcm');
                            }, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.notifications,
                                  size: 50,
                                  color: Colors.white,
                                ), // icon
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    "FCM Test",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  ),
                                ), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox.fromSize(
                      size: Size(100, 100), // button width and height
                      child: ClipOval(
                        child: Material(
                          color: Colors.blueAccent, // button color
                          child: InkWell(
                            splashColor: Colors.black, // splash color
                            onTap: () {
                              Navigator.pushNamed(context, '/input_print');
                            }, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.print,
                                  size: 50,
                                  color: Colors.white,
                                ), // icon
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    "Print Test",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  ),
                                ), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
