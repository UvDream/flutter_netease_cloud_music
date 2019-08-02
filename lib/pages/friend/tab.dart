import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: ScreenUtil().setWidth(284),
        height: ScreenUtil().setHeight(60),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.red),
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
              ),
              alignment: Alignment.center,
              width: ScreenUtil().setWidth(140),
              height: ScreenUtil().setHeight(60),
              child: Text(
                '动态',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: ScreenUtil().setWidth(140),
              height: ScreenUtil().setHeight(60),
              child: Text(
                '附近',
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
