/*
 * @Author: wangzhongjie
 * @Date: 2019-02-20 15:47:58
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-19 10:05:42
 * @Description: 我的
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import '../../components/play.dart';
import '../find/search.dart';

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {},
          child: Icon(
            IconData(0xe647, fontFamily: 'IconFont'),
            size: 25,
          ),
        ),
        title: SearchArea(),
        elevation: 1,
        titleSpacing: 0,
        centerTitle: true,
        actions: <Widget>[PlayButton()],
      ),
      body: Container(
        child: Center(
          child: Text('还在努力研发中!'),
        ),
      ),
    );
  }
}
