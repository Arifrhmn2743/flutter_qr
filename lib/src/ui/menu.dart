import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
                child: SizedBox.fromSize(
                  size: Size(120, 120), // button width and height
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
                              size: 75,
                              color: Colors.white,
                            ), // icon
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "Scan",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
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
      ),
    );
  }
}
