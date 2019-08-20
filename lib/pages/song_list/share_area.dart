/*
 * @Author: wangzhongjie
 * @Date: 2019-08-19 16:55:23
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-20 15:08:27
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
      margin: EdgeInsets.only(top: 0),
      height: ScreenUtil().setHeight(130),
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
      width: ScreenUtil().setWidth(150),
      height: ScreenUtil().setHeight(200),
      margin: EdgeInsets.only(top: ScreenUtil().setHeight(20)),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: <Widget>[
            Container(
              child: Icon(
                IconData(icon, fontFamily: 'IconFont'),
                color: Colors.white,
                size: 32,
              ),
            ),
            Expanded(
              child: Container(
                height: ScreenUtil().setHeight(150),
                margin: EdgeInsets.only(top: ScreenUtil().setHeight(10.0)),
                child: Text(
                  '$num',
                  style: TextStyle(
                      color: Colors.white, fontSize: ScreenUtil().setSp(25)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
