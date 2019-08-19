import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../config/http.dart';
import '../../config/service_url.dart';

class SongDetailProvider with ChangeNotifier {
  void getSongDetail(id) async {
    var formData = {'id': id};
    await fetch(servicePath['songListDetail'], formData: formData).then((val) {
      print('-----歌单详情-----');
      print(val);
    });
  }
}
