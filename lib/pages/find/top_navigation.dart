/*
 * @Author: wangzhongjie
 * @Date: 2019-07-29 08:28:16
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-07-29 15:35:18
 * @Description: 首页顶部导航栏
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(200),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          _containPage(0xe624, '每日推荐', 24),
          _containPage(0xe64b, '歌单', 20),
          _containPage(0xe608, '排行榜', 20),
          _containPage(0xe66b, '电台', 24),
          _containPage(0xe605, '直播', 24)
        ],
      ),
    );
  }

  Widget _containPage(int icon, String title, double IconSize) {
    int _date = new DateTime.now().day;
    return Container(
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 1, color: Colors.black12))),
        width: ScreenUtil().setWidth(150),
        child: InkWell(
            onTap: () {
              print('点击了');
              var now = new DateTime.now();
              var date = new DateTime(now.day);
              print(date);
              print(now.day);
            },
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 22, bottom: 8),
                      width: ScreenUtil().setWidth(90),
                      height: ScreenUtil().setWidth(90),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(45)),
                      child: Icon(
                        IconData(icon, fontFamily: 'IconFont'),
                        size: IconSize,
                        color: Colors.white,
                      ),
                    ),
                    Text(title,
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(20),
                            color: Colors.black54))
                  ],
                ),
                Positioned(
                  top: ScreenUtil().setSp(84),
                  child: title == '每日推荐'
                      ? Text(
                          '$_date',
                          style: TextStyle(color: Colors.red, fontSize: 10),
                        )
                      : Text(''),
                )
              ],
            )));
  }
}
