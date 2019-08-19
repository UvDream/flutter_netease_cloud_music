/*
 * @Author: wangzhongjie
 * @Date: 2019-08-12 11:18:06
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-19 16:56:08
 * @Description: 顶部区域
 * @Email: UvDream@163.com
 */
import 'dart:ui';
import 'package:flutter/material.dart';
import '../../material/flexible_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './song_auth.dart';
import './share_area.dart';

class TopArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      expandedHeight: 400.0,
      pinned: true,
      bottom: _buildListHeader(context),
      flexibleSpace: _PlaylistDetailHeader(),
    );
  }

  Widget _buildListHeader(BuildContext context) {
    return MusicListHeader(1);
  }
}

class _PlaylistDetailHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlexibleDetailBar(
      background: PlayListHeaderBackground(
          imageUrl:
              'http://p2.music.126.net/yWT7cg3Qgl2ngqq3FztnWQ==/109951164291056003.jpg'),
      content: TopContent(),
      builder: (context, t) => AppBar(
            title: Text('歌单'),
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
      color: Colors.white,
      margin: EdgeInsets.only(top: 150),
      child: Column(
        children: <Widget>[
          AuthDescription(),
          ShareArea(),
        ],
      ),
    );
  }
}
