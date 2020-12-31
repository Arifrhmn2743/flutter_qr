import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class VibrateTestPage extends StatefulWidget {
  @override
  _VibrateTestPageState createState() => _VibrateTestPageState();
}

class _VibrateTestPageState extends State<VibrateTestPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Vibration test'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Builder(
            builder: (BuildContext context) {
              return Center(
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Vibrate for default 500ms'),
                      onPressed: () {
                        Vibration.vibrate();
                      },
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                    ),
                    RaisedButton(
                      child: Text('Vibrate for 1000ms'),
                      onPressed: () {
                        Vibration.vibrate(duration: 1000);
                      },
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                    ),
                    RaisedButton(
                      child: Text('Vibrate with pattern'),
                      onPressed: () {
                        final snackBar = SnackBar(
                          content: Text(
                            'Pattern: wait 0.5s, vibrate 1s, wait 0.5s, vibrate 2s, wait 0.5s, vibrate 3s, wait 0.5s, vibrate 0.5s',
                          ),
                        );
                        Scaffold.of(context).showSnackBar(snackBar);
                        Vibration.vibrate(
                          pattern: [500, 1000, 500, 2000, 500, 3000, 500, 500],
                        );
                      },
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                    ),
                    RaisedButton(
                      child: Text('Vibrate with pattern and amplitude'),
                      onPressed: () {
                        final snackBar = SnackBar(
                          content: Text(
                            'Pattern: wait 0.5s, vibrate 1s, wait 0.5s, vibrate 2s, wait 0.5s, vibrate 3s, wait 0.5s, vibrate 0.5s',
                          ),
                        );

                        Scaffold.of(context).showSnackBar(snackBar);
                        Vibration.vibrate(
                          pattern: [500, 1000, 500, 2000, 500, 3000, 500, 500],
                          intensities: [128, 255, 64, 255],
                        );
                      },
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
