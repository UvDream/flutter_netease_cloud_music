import 'package:flutter/material.dart';
import 'bottom_navigation.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xffd93431),
      ),
      home:BottomNavigationWidget(),
    );
  }
}
