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
          _block(0xe614, '信息'),
          _block(0xe62a, '商城', '赠99无线充'),
          _block(0xe674, '演出', '刺猬'),
          _block(0xe615, '个性皮肤'),
        ],
      ),
    );
  }

  Widget _block(icon, title, [remark = '']) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: ScreenUtil().setWidth(187.5),
        child: Column(
          children: <Widget>[
            Icon(
              IconData(icon, fontFamily: 'IconFont'),
              color: Colors.red,
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
