import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/song_list/song_list.dart';
import '../pages/player/player.dart';

Handler songListHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String songListId = params['id'].first;
  return SongListPage(songListId);
});
Handler playerHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  print("路由传参+++++++++");
  print(params);
  String songId = params['id'].first;
  return PlayerPage(songId);
});
