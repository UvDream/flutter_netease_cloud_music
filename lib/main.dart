import 'package:flutter/material.dart';
import 'bottom_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '网易云音乐(仿)',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: BottomNavigationWidget(),
    );
  }
}
