import 'dart:ui';

import 'package:flutter/material.dart';
import '../../material/flexible_app_bar.dart';

class TopArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // centerTitle: true,
      // title: Text('这是标题'),
      elevation: 0,
      backgroundColor: Colors.transparent,
      expandedHeight: 220.0,
      // floating: false,
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
                'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3028950957,3773753529&fm=26&gp=0.jpg'),
        content: Container(),
        builder: (context, t) => AppBar());
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
