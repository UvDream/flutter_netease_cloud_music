import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataInfo with ChangeNotifier {
  int _count = 0;
  ThemeData _themeData = ThemeData.light();

  get count => _count;
  get themeData => _themeData;

  addCount() {
    _count++;
    notifyListeners();
  }

  subCount() {
    _count--;
    notifyListeners();
  }

  changeTheme() {
    if (_themeData == ThemeData.light()) {
      _themeData = ThemeData.dark();
    } else {
      _themeData = ThemeData.light();
    }
    notifyListeners();
  }
}
