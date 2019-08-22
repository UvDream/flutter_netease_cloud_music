/*
 * @Author: wangzhongjie
 * @Date: 2019-08-12 11:18:06
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-22 15:51:31
 * @Description: 顶部区域
 * @Email: UvDream@163.com
 */
import 'dart:ui';
import 'package:flutter/material.dart';
import '../../material/flexible_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './song_auth.dart';
import './share_area.dart';
import '../../provider/song_list/song_detail.dart';
import 'package:provider/provider.dart';

class TopArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var message = Provider.of<SongDetailProvider>(context);
    return SliverAppBar(
      elevation: 0,
      leading:
          Icon(IconData(0xe707, fontFamily: 'IconFont'), color: Colors.white),
      backgroundColor: Colors.transparent,
      expandedHeight: ScreenUtil().setHeight(550),
      pinned: true,
      bottom: _buildListHeader(context, message.trackCount),
      flexibleSpace: _PlaylistDetailHeader(message.songImg),
    );
  }

  Widget _buildListHeader(BuildContext context, trackCount) {
    return MusicListHeader(trackCount);
  }
}

class _PlaylistDetailHeader extends StatelessWidget {
  final String songImg;
  _PlaylistDetailHeader(this.songImg);
  @override
  Widget build(BuildContext context) {
    return FlexibleDetailBar(
      background: PlayListHeaderBackground(imageUrl: songImg),
      content: TopContent(),
      builder: (context, t) => AppBar(
            brightness: Brightness.dark,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Icon(IconData(0xe707, fontFamily: 'IconFont'),
                    color: Colors.white),
              ),
            ),
            centerTitle: true,
            title: Text(
              '歌单',
              style: TextStyle(color: Colors.white),
            ),
            // 解决头部问题
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
    );
  }
}

///播放列表头部背景
class PlayListHeaderBackground extends StatelessWidget {
  final String imageUrl;

  const PlayListHeaderBackground({Key key, @required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: <Widget>[
        Opacity(
          opacity: 1,
          child: Image.network(
            imageUrl,
            fit: BoxFit.fitWidth,
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
          child: Container(color: Colors.black.withOpacity(0.3)),
        )
      ],
    );
  }
}

///音乐列表头
class MusicListHeader extends StatelessWidget implements PreferredSizeWidget {
  MusicListHeader(this.count, {this.tail});

  final int count;

  final Widget tail;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        child: InkWell(
          onTap: () {},
          child: SizedBox.fromSize(
            size: preferredSize,
            child: Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 16)),
                Icon(
                  Icons.play_circle_outline,
                  color: Theme.of(context).iconTheme.color,
                ),
                Padding(padding: EdgeInsets.only(left: 4)),
                Text(
                  "播放全部",
                  style: Theme.of(context).textTheme.body1,
                ),
                Padding(padding: EdgeInsets.only(left: 2)),
                Text(
                  "(共$count首)",
                  style: Theme.of(context).textTheme.caption,
                ),
                Spacer(),
                tail,
              ]..removeWhere((v) => v == null),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class TopContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          AuthDescription(),
          ShareArea(),
        ],
      ),
    );
  }
}
