/*
 * @Author: wangzhongjie
 * @Date: 2019-09-03 16:19:55
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-09-05 15:05:48
 * @Description: 播放器中间区域
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(850),
      child: Text('歌词区域'),
    );
  }
}
