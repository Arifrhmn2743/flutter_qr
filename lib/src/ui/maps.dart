import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPage extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Maps Demo'),
        ),
        body: GoogleMap(
          initialCameraPosition:
              CameraPosition(target: LatLng(40.688841, -74.044015), zoom: 11),
        ));
  }
}
