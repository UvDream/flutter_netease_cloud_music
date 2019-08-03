import 'package:flutter/material.dart';
import 'bottom_navigation.dart';
import 'package:provider/provider.dart';
import './provider/count.dart';
import './provider/find/new_dish.dart';
import './provider/current_index.dart';
// void main() => runApp(MyApp());

// void main() => runApp(ChangeNotifierProvider(
//     builder: (context) => CounterBloc(), child: MyApp()));

void main() {
  Provider.debugCheckInvalidValueType = null;
  // var counter = CounterBloc();
  // var newDish = NewDishProvider();
  // runApp(MultiProvider(
  //   providers: [
  //     Provider<CounterBloc>.value(value: counter),
  //     Provider<NewDishProvider>.value(value: newDish),
  //     // ChangeNotifierProvider(builder: (_) => NewDishProvider()),
  //   ],
  //   child: MyApp(),
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var counter = CounterBloc();
    var newDish = NewDishProvider();
    return MultiProvider(
      providers: [
        Provider<CounterBloc>.value(value: counter),
        // 制管理恒定数据不通知视图刷新
        // Provider<NewDishProvider>.value(value: newDish),

        ChangeNotifierProvider(builder: (_) => NewDishProvider()),
        ChangeNotifierProvider(builder: (_) => CurrentIndexProvider()),
      ],
      child: MaterialApp(
        title: '网易云音乐(仿)',
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: BottomNavigationWidget(),
      ),
    );
  }
}
