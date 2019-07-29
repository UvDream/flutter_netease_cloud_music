/*
 * @Author: wangzhongjie
 * @Date: 2019-02-20 15:47:58
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-07-29 20:08:49
 * @Description: 我的
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import '../../components/play.dart';
import 'package:provider/provider.dart';
import '../../provider/count.dart';

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
          child: Text(Provider.of<DataInfo>(context).count.toString()),
        ));
  }
}
