/*
 * @Author: wangzhongjie
 * @Date: 2019-02-20 15:47:45
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-02-20 17:08:40
 * @Description: 账户
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import '../../components/play.dart';
class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("账户"),
        elevation: 1,
        centerTitle:true,
        actions: <Widget>[
          PlayButton()
        ],
      ),
      body: Text("账户"),
    );
  }
}
