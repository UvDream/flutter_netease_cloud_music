/*
 * @Author: wangzhongjie
 * @Date: 2019-09-03 16:23:19
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-09-05 15:05:06
 * @Description: 按钮区域
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './button.dart';

class BtnGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: ScreenUtil().setHeight(100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BtnBar(0xe66d, 30.0),
            BtnBar(0xe65a, 30.0),
            BtnBar(0xe669, 30.0),
            BtnBar(0xe66e, 30.0),
            BtnBar(0xe612, 30.0),
          ],
        ));
  }
}
