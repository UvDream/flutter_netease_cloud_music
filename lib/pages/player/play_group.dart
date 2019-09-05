/*
 * @Author: wangzhongjie
 * @Date: 2019-09-03 16:24:50
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-09-05 14:59:38
 * @Description: 播放按钮区域
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';
import './button.dart';

class PlayGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BtnBar(0xe664, 30.0),
          BtnBar(0xe664, 30.0),
          BtnBar(0xe666, 50.0),
          BtnBar(0xe663, 30.0),
          BtnBar(0xe66a, 30.0),
        ],
      ),
    );
  }
}
