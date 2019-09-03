/*
 * @Author: wangzhongjie
 * @Date: 2019-09-03 14:12:00
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-09-03 15:08:43
 * @Description: 播放界面AppBar
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../material/marquee.text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayingTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.dark,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          child: Icon(IconData(0xe707, fontFamily: 'IconFont'),
              color: Colors.white),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleSpacing: 0,
      title: InkWell(
        onTap: () {},
        child: Container(
          child: Column(
            children: <Widget>[
              MarqueeText.rich(
                TextSpan(
                    text: "很长的标题就是很长", style: TextStyle(color: Colors.white)),
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        '周几轮',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(25),
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      actions: <Widget>[
        InkWell(
          onTap: () {},
          child: Container(
            width: ScreenUtil().setWidth(100),
            alignment: Alignment.center,
            child: Icon(
              IconData(0xe654, fontFamily: "IconFont"),
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
