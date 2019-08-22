/*
 * @Author: wangzhongjie
 * @Date: 2019-08-19 16:55:23
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-22 15:33:56
 * @Description: 顶部分享区域
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../provider/song_list/song_detail.dart';
import 'package:provider/provider.dart';

class ShareArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var message = Provider.of<SongDetailProvider>(context);
    return Container(
      margin: EdgeInsets.only(top: 0),
      height: ScreenUtil().setHeight(130),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _iconBlock(0xe626, message.commentCount),
          _iconBlock(0xe654, message.shareCount),
          _iconBlock(0xe61c, '下载'),
          _iconBlock(0xe700, '多选'),
        ],
      ),
    );
  }

  Widget _iconBlock(icon, num) {
    return Container(
      width: ScreenUtil().setWidth(180),
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
