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
  // 作者名字
  var nickName = '';
  //作者头像
  var avatarUrl = '';
  // 播放量
  int playCount = 0;

  void getSongDetail(id) async {
    var formData = {'id': id};
    await fetch(servicePath['songListDetail'], formData: formData).then((val) {
      print('-----歌单详情-----');
      print(val['playlist']['creator']['nickname']);
      print('+++++++实际数据++++++');
      title = val['playlist']['name'];
      description = val['playlist']['description'];
      songList = (val['playlist']['tracks'] as List).cast();
      songImg = val['playlist']['coverImgUrl'];
      nickName = val['playlist']['creator']['nickname'];
      avatarUrl = val['playlist']['creator']['avatarUrl'];
      playCount = val['playlist']['playCount'];
    });
    notifyListeners();
  }
}
