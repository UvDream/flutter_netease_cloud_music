import 'package:flutter/material.dart';

class SongListPage extends StatelessWidget {
  final String songListId;
  SongListPage(this.songListId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('列表页面'),
        ),
        body: Center(
          child: Text(songListId),
        ));
  }
}
