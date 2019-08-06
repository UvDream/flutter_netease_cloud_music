import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CenterBlockPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _block(0xe601, '本地音乐', '0'),
          _block(0xe60c, '最近播放', '0'),
          _block(0xe66b, '我的电台', '0'),
          _block(0xe629, '我的收藏', '0', true)
        ],
      ),
    );
  }

  Widget _block(icon, title, num, [border = false]) {
    return InkWell(
        onTap: () {},
        child: Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                width: ScreenUtil().setWidth(152),
                height: ScreenUtil().setHeight(105),
                child: Icon(
                  IconData(icon, fontFamily: 'IconFont'),
                ),
              ),
              Container(
                width: ScreenUtil().setWidth(598),
                height: ScreenUtil().setHeight(105),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: border ? Colors.white : Color(0xffe6e6e6),
                    ),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Text(title),
                    Container(
                      alignment: Alignment.centerRight,
                      width: ScreenUtil().setWidth(430),
                      child: Text(num),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Color(0xffe6e6e6),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
