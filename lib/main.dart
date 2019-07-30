import 'package:flutter/material.dart';
import 'bottom_navigation.dart';
import 'package:provider/provider.dart';
import './provider/count.dart';
// void main() => runApp(MyApp());

// void main() => runApp(ChangeNotifierProvider(
//     builder: (context) => CounterBloc(), child: MyApp()));

void main() {
  Provider.debugCheckInvalidValueType = null;
  var counter = CounterBloc();
  runApp(MultiProvider(
    providers: [Provider<CounterBloc>.value(value: counter)],
    child: MyApp(),
  ));
}

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
