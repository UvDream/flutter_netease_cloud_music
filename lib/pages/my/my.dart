/*
 * @Author: wangzhongjie
 * @Date: 2019-02-20 15:47:58
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-05 17:49:33
 * @Description: 我的
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import '../../components/play.dart';
import './top_area.dart';
import './center_block.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {},
            child: Icon(
              IconData(0xe67c, fontFamily: 'IconFont'),
              size: 32,
            ),
          ),
          title: Text(
            "我的音乐",
            style: TextStyle(fontSize: 18),
          ),
          elevation: 0,
          centerTitle: true,
          actions: <Widget>[PlayButton()],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[TopAreaPage(), CenterBlockPage()],
        )));
  }
}
