import 'package:flutter/material.dart';
import '../../config/http.dart';
import '../../config/service_url.dart';

class NewDishProvider with ChangeNotifier {
  bool _isLeft = true;
  List<Map> songList = [];
  bool get isLeft => _isLeft;
  void changeSelect(val) {
    _isLeft = val;
    notifyListeners();
  }

  void getNewDish() async {
    await fetch(servicePath['newDishApi']).then((val) {
      print('-----------新歌新碟----------');
      print(val);
      songList = (val['albums'] as List).cast();
      print('新的列表');
      print(songList);
    });
    notifyListeners();
  }
}
