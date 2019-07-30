/*
 * @Author: wangzhongjie
 * @Date: 2019-02-20 15:47:58
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-07-30 10:14:58
 * @Description: 我的
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import '../../components/play.dart';

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("我的"),
          elevation: 1,
          centerTitle: true,
          actions: <Widget>[PlayButton()],
        ),
        body: Container(
          child: Text('视频'),
        ));
  }
}
