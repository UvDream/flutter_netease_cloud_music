/*
 * @Author: wangzhongjie
 * @Date: 2019-09-03 16:24:50
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-09-05 14:52:44
 * @Description: 播放按钮区域
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _btn(0xe667, 30.0),
          _btn(0xe664, 30.0),
          _btn(0xe666, 50.0),
          _btn(0xe663, 30.0),
          _btn(0xe66a, 30.0),
        ],
      ),
    );
  }

  Widget _btn(icon, size) {
    return Container(
      width: ScreenUtil().setWidth(140),
      child: Icon(
        IconData(icon, fontFamily: "IconFont"),
        color: Colors.white,
        size: size,
      ),
    );
  }
}
