import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../config/http.dart';
import '../../config/service_url.dart';

class SongDetailProvider with ChangeNotifier {
  // 标题
  var title = '';
  // 描述
  var description = '';
  // 歌单头像
  var songImg = '';
  // 歌曲列表
  List<Map> songList = [];

  void getSongDetail(id) async {
    var formData = {'id': id};
    await fetch(servicePath['songListDetail'], formData: formData).then((val) {
      print('-----歌单详情-----');
      print(val);
      print('+++++++实际数据++++++');
      title = val['playlist']['name'];
      print(title);
      description = val['playlist']['description'];
      print(description);
      songList = (val['playlist']['tracks'] as List).cast();
      print(songList);
      songImg = val['playlist']['coverImgUrl'];
    });
    notifyListeners();
  }
}
