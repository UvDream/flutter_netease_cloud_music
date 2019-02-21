/*
 * @Author: wangzhongjie
 * @Date: 2019-02-18 17:08:30
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-02-20 17:08:36
 * @Description: 发现
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import '../../components/play.dart';
class FindPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("发现"),
        elevation: 1,
        centerTitle: true,
        actions: <Widget>[
          PlayButton()
        ],
      ),
      body: Text("发现"),
    );
  }
}
