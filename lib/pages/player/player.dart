/*
 * @Author: wangzhongjie
 * @Date: 2019-09-02 09:23:21
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-09-03 14:40:25
 * @Description: 播放界面
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';
import './palyer_title.dart';

class PlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Material(
            color: Colors.transparent,
            child: Column(
              children: <Widget>[PlayingTitle()],
            ),
          )
        ],
      ),
    );
  }
}
