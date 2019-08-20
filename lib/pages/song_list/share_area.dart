/*
 * @Author: wangzhongjie
 * @Date: 2019-08-19 16:55:23
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-20 10:50:13
 * @Description: 顶部分享区域
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShareArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(90),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _iconBlock(1),
          _iconBlock(1),
        ],
      ),
    );
  }

  Widget _iconBlock(num) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: ScreenUtil().setHeight(45),
            height: ScreenUtil().setHeight(45),
            child: Icon(Icons.chevron_right),
          ),
          Text('$num')
        ],
      ),
    );
  }
}
