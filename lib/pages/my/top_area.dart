import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: ScreenUtil().setHeight(150),
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Color(0xffe6e6e6),
              ),
            ),
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _block(0xe60b, 18.0, '私人FM'),
              _block(0xe60f, 18.0, 'Sati空间'),
              _block(0xe64a, 18.0, '私藏空间'),
              _block(0xe60b, 18.0, '因乐交友'),
              _block(0xe600, 18.0, '亲子频道'),
              _block(0xe60e, 18.0, '古典专区'),
              _block(0xe607, 18.0, '跑步FM'),
              _block(0xe6e3, 18.0, '驾驶模式'),
              _block(0xe604, 18.0, '编辑'),
            ],
          ),
        ));
  }

  Widget _block(icon, fontSize, title) {
    return Container(
      width: ScreenUtil().setWidth(150),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: ScreenUtil().setWidth(70),
            height: ScreenUtil().setWidth(70),
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: title == '编辑' ? Colors.black12 : Colors.red,
              borderRadius: BorderRadius.circular(70),
            ),
            child: Icon(
              IconData(icon, fontFamily: 'IconFont'),
              size: fontSize,
              color: Colors.white,
            ),
          ),
          Text(title, style: TextStyle(fontSize: ScreenUtil().setSp(22))),
        ],
      ),
    );
  }
}
