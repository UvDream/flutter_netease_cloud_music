/*
 * @Author: wangzhongjie
 * @Date: 2019-09-03 16:23:19
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-09-05 14:03:20
 * @Description: 按钮区域
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BtnGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: ScreenUtil().setHeight(100),
      child: Text('按钮分享'),
    );
  }
}
