import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().setWidth(550),
      height: ScreenUtil().setHeight(95),
      alignment: Alignment.center,
      child: Container(
        width: ScreenUtil().setWidth(520),
        height: ScreenUtil().setHeight(80),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xfff7f7f7),
            borderRadius: BorderRadius.circular(ScreenUtil().setHeight(95))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              IconData(0xe618, fontFamily: 'IconFont'),
              size: 18,
              color: Color(0xffc5c5c6),
            ),
            Text(
              '一曲相思',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(30), color: Color(0xffc5c5c6)),
            )
          ],
        ),
      ),
    );
  }
}
