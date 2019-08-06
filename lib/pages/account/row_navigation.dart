import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowNavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        children: <Widget>[
          _block(0xe614, '信息', 30.0),
          _block(0xe615, '商城', 22.0, '赠99无线充'),
          _block(0xe674, '演出', 25.0, '刺猬'),
          _block(0xe6b6, '个性皮肤', 25.0),
        ],
      ),
    );
  }

  Widget _block(icon, title, size, [remark = '']) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: ScreenUtil().setWidth(187.5),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: ScreenUtil().setWidth(65),
              height: ScreenUtil().setWidth(65),
              child: Icon(
                IconData(icon, fontFamily: 'IconFont'),
                color: Colors.red,
                size: size,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(25),
                ),
              ),
            ),
            Container(
              child: Text(
                remark,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: ScreenUtil().setSp(20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
