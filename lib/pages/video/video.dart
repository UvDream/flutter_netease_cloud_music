/*
 * @Author: wangzhongjie
 * @Date: 2019-02-20 15:48:06
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-02-20 17:08:15
 * @Description: 视频
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import '../../components/play.dart';

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("视频"),
        elevation: 1,
        centerTitle: true,
        actions: <Widget>[
          PlayButton()
        ],
      ),
      body: Text("视频"),
    );
  }
}
