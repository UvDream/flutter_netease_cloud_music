import 'dart:ui';
import 'package:flutter/material.dart';
import './bottom_list.dart';
import './top_area.dart';

class SongListPage extends StatelessWidget {
  final String songListId;
  SongListPage(this.songListId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: _sliverBuilder,
        body: BottomList(),
      ),
    );
  }

  List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      TopArea(),
      // SliverPersistentHeader(
      //   pinned: true,
      //   delegate: _SliverAppBarDelegate(),
      // )
    ];
  }
}

// 废弃的顶部
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        alignment: Alignment.center,
        child: Text('我是一个头部部件',
            style: TextStyle(color: Colors.white, fontSize: 30.0)));
  } // 头部展示内容

  @override
  double get maxExtent => 50.0; // 最大高度

  @override
  double get minExtent => 50.0; // 最小高度

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}
