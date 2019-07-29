/*
 * @Author: wangzhongjie
 * @Date: 2019-02-20 15:47:58
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-07-29 19:38:38
 * @Description: 我的
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import '../../components/play.dart';
import 'package:provider/provider.dart';
import '../../provider/count.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的音乐"),
        elevation: 1,
        centerTitle: true,
        actions: <Widget>[PlayButton()],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(Provider.of<DataInfo>(context).count.toString()),
            RaisedButton(
              child: Text("+"),
              onPressed: () {
                Provider.of<DataInfo>(context).addCount();
              },
            ),
            RaisedButton(
              child: Text("-"),
              onPressed: () {
                Provider.of<DataInfo>(context).subCount();
              },
            )
          ],
        ),
      ),
    );
  }
}
