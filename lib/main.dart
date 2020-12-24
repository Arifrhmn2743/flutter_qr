import 'package:flutter/material.dart';
import 'package:loginandqr/src/ui/login.dart';
import 'package:loginandqr/src/ui/maps.dart';
import 'package:loginandqr/src/ui/menu.dart';
import 'package:loginandqr/src/ui/scan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/menu': (context) => Menu(),
        '/scan': (context) => ScanPage(),
        '/maps': (context) => MapsPage()
      },
    );
  }
}
