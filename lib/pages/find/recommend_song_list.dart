/*
 * @Author: wangzhongjie
 * @Date: 2019-07-29 11:43:47
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-07-29 12:17:59
 * @Description: 推荐歌单
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendSongList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().setWidth(686),
      child: Column(
        children: <Widget>[_title()],
      ),
    );
  }

  Widget _title() {
    return Row(
      children: <Widget>[
        Container(
          width: ScreenUtil().setWidth(532),
          child: Text(
            '推荐歌单',
            style: TextStyle(
                fontSize: ScreenUtil().setSp(40), fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: ScreenUtil().setWidth(154),
          child: Container(
            child: Text('歌单广场'),
          ),
        )
      ],
    );
  }
}
