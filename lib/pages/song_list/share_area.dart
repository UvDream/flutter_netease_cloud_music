/*
 * @Author: wangzhongjie
 * @Date: 2019-08-19 16:55:23
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-20 11:29:40
 * @Description: 顶部分享区域
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShareArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24.0),
      height: ScreenUtil().setHeight(100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _iconBlock(0xe626, 71),
          _iconBlock(0xe654, 71),
          _iconBlock(0xe61c, '下载'),
          _iconBlock(0xe700, '多选'),
        ],
      ),
    );
  }

  Widget _iconBlock(icon, num) {
    return Container(
        // color: Colors.red,
        margin: EdgeInsets.only(left: 10),
        width: ScreenUtil().setWidth(150),
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                // color: Colors.orange,
                width: ScreenUtil().setHeight(60),
                height: ScreenUtil().setHeight(60),
                child: Icon(
                  IconData(icon, fontFamily: 'IconFont'),
                  color: Colors.white,
                  size: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text('$num'),
              )
            ],
          ),
        ));
  }
}
