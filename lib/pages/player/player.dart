/*
 * @Author: wangzhongjie
 * @Date: 2019-09-02 09:23:21
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-09-03 15:24:45
 * @Description: 播放界面
 * @Email: UvDream@163.com
 */
import 'dart:ui';

import 'package:flutter/material.dart';
import './palyer_title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayerPage extends StatelessWidget {
  final String songId;
  PlayerPage(this.songId);
  @override
  Widget build(BuildContext context) {
    print("歌曲详情id=${this.songId}");
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PlayerBackground(
              music:
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567503437930&di=f6d79426d7fdf2345f5cff9701f8eb05&imgtype=0&src=http%3A%2F%2Fimg0.cache.hxsd.com%2Fnews%2F2010%2F09%2F20%2F202045036454.jpg"),
          Material(
            color: Colors.transparent,
            child: Column(
              children: <Widget>[PlayingTitle()],
            ),
          )
        ],
      ),
    );
  }
}

// 播放器模糊背景利用高斯模糊
class PlayerBackground extends StatelessWidget {
  final music;
  const PlayerBackground({Key key, this.music}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          Opacity(
            opacity: 1,
            child: Container(
              height: ScreenUtil().setHeight(1334),
              color: Colors.red,
              child: Image.network(
                music,
                fit: BoxFit.fill,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          )
        ],
      ),
    );
  }
}
