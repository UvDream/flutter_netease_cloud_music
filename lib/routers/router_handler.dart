import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/song_list/song_list.dart';

Handler songListHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String songListId = params['id'].first;
  return SongListPage(songListId);
});
