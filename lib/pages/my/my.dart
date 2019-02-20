/*
 * @Author: wangzhongjie
 * @Date: 2019-02-20 15:47:58
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-02-20 17:08:20
 * @Description: 我的
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import '../../components/play.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("我的音乐"),
        elevation: 1,
        actions: <Widget>[
          PlayButton()
        ],
      ),
      body: Text("我的"),
    );
  }
}
