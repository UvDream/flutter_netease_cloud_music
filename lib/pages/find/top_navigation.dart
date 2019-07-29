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
          _containPage(0xe609, '每日推荐'),
          _containPage(0xe609, '歌单'),
          _containPage(0xe608, '排行榜'),
          _containPage(0xe609, '电台'),
          _containPage(0xe609, '直播')
        ],
      ),
    );
  }

  Widget _containPage(int icon, title) {
    return Container(
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 1, color: Colors.black12))),
        width: ScreenUtil().setWidth(150),
        child: InkWell(
          onTap: () {
            print('点击了');
          },
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 22, bottom: 8),
                width: ScreenUtil().setWidth(90),
                height: ScreenUtil().setWidth(90),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(45)),
                child: Icon(
                  IconData(icon, fontFamily: 'IconFont'),
                  size: 20,
                  color: Colors.white,
                ),
              ),
              Text(title,
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(20), color: Colors.black54))
            ],
          ),
        ));
  }
}
