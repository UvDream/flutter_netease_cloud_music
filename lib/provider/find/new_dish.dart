import 'package:flutter/material.dart';

class NewDishProvider with ChangeNotifier {
  bool _isLeft = true;
  bool get isLeft => _isLeft;
  void changeSelect(val) {
    _isLeft = val;
    notifyListeners();
  }
}
