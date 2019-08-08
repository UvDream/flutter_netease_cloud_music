import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/song_list/song_list.dart';

Handler detailhandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String songListId = params['id'].first;
  print('路由参数${songListId}');
  return SongListPage(songListId);
});
