/*
 * @Author: wangzhongjie
 * @Date: 2019-02-20 15:47:53
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-02-20 17:08:28
 * @Description: 账户
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import '../../components/play.dart';

class FriendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("朋友"),
        elevation: 1,
        centerTitle: true,
        actions: <Widget>[
          PlayButton()
        ],
      ),
      body: Text("朋友"),
    );
  }
}
