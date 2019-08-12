import 'dart:ui';

import 'package:flutter/material.dart';

class TopArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
      title: Text('这是标题'),
      backgroundColor: Colors.transparent,
      expandedHeight: 220.0,
      floating: false,
      pinned: true,
      bottom: _buildListHeader(context),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: <Widget>[
            ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child: Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545738629147&di=22e12a65bbc6c4123ae5596e24dbc5d3&imgtype=0&src=http%3A%2F%2Fpic30.photophoto.cn%2F20140309%2F0034034413812339_b.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: Opacity(
                    opacity: .5,
                    child: Container(
                      child: Text('测试'),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildListHeader(BuildContext context) {
    return MusicListHeader(1);
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
