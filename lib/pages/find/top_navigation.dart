/*
 * @Author: wangzhongjie
 * @Date: 2019-07-29 08:28:16
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-20 15:15:22
 * @Description: 首页顶部导航栏
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../routers/application.dart';

class TopNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(200),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          _containPage(0xe624, '每日推荐', 24.0, context),
          _containPage(0xe64b, '歌单', 20.0, context),
          _containPage(0xe608, '排行榜', 20.0, context),
          _containPage(0xe66b, '电台', 24.0, context),
          _containPage(0xe605, '直播', 24.0, context)
        ],
      ),
    );
  }

  Widget _containPage(
      int icon, String title, double IconSize, BuildContext context) {
    int _date = new DateTime.now().day;
    return Container(
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 1, color: Colors.black12))),
        width: ScreenUtil().setWidth(150),
        child: InkWell(
            onTap: () {
              Application.router.navigateTo(context, '/songList?id=0');
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
                      margin: EdgeInsets.only(top: 17, bottom: 8),
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
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(24),
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: ScreenUtil().setSp(76),
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
