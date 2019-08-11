import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IsLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 25),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text('登陆网易云音乐'),
          Text('手机电脑多端同步,尽享海量高品质音乐'),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            width: ScreenUtil().setWidth(720),
            height: ScreenUtil().setHeight(80),
            child: RaisedButton(
              elevation: 0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Color(0xffe6e6e6))),
              onPressed: () {},
              child: Text(
                '立即登录',
                style: TextStyle(fontSize: ScreenUtil().setSp(32)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
