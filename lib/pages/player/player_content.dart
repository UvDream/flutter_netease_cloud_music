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

class PlayerContent extends StatefulWidget {
  @override
  _PlayerContentState createState() => _PlayerContentState();
}

class _PlayerContentState extends State<PlayerContent> {
  static const double HEIGHT_SPACE_ALBUM_TOP = 100;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(850),
      child: Stack(
        children: <Widget>[
          ClipRect(
            child: Container(
              child: Align(
                alignment: Alignment(0, -1),
                child: Transform.translate(
                  offset: Offset(10, -15),
                  child: Container(
                    width: 100,
                    height: 200,
                    color: Colors.red,
                    child: Image.asset("images/play/play.png"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
