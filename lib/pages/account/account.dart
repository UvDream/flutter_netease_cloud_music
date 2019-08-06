/*
 * @Author: wangzhongjie
 * @Date: 2019-02-20 15:47:45
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-06 18:07:33
 * @Description: 账户
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import '../../components/play.dart';
import './is_login_top.dart';
import './row_navigation.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {},
          child: Icon(
            IconData(0xe610, fontFamily: 'IconFont'),
            size: 23,
          ),
        ),
        elevation: 1,
        centerTitle: true,
        actions: <Widget>[PlayButton()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            IsLoginPage(),
            RowNavigationPage(),
          ],
        ),
      ),
    );
  }
}
