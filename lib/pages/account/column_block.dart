import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class ColumnBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _firstBlock(),
          _twoBlock(),
          _threeBlock(),
          _fourBlock()
        ],
      ),
    );
  }

  Widget _firstBlock() {
    return Container(
      margin: EdgeInsets.only(top: 8),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          _block(0xe6d8, '口袋铃声', ''),
          _block(0xe616, '我的订单', '', true),
        ],
      ),
    );
  }

  Widget _twoBlock() {
    return Container(
      margin: EdgeInsets.only(top: 8),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          _block(0xe658, '设置', ''),
          _block(0xe633, '夜间模式', '', false, true),
          _block(0xe6b3, '定时关闭', ''),
          _block(0xe61b, '音乐闹钟', '', true),
        ],
      ),
    );
  }

  Widget _threeBlock() {
    return Container(
      margin: EdgeInsets.only(top: 8),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          _block(0xe622, '在线听歌免流量', ''),
          _block(0xe617, '优惠券', '', true),
        ],
      ),
    );
  }

  Widget _fourBlock() {
    return Container(
      margin: EdgeInsets.only(top: 8),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          _block(0xe61a, '我要直播', ''),
          _block(0xe67e, '分享网易云音乐', ''),
          _block(0xe627, '关于', '', true),
        ],
      ),
    );
  }

  Widget _block(icon, title, num, [border = false, btn = false]) {
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
                    Container(
                      width: ScreenUtil().setWidth(250),
                      child: Text(title),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      width: btn
                          ? ScreenUtil().setWidth(230)
                          : ScreenUtil().setWidth(290),
                      child: Text(num),
                    ),
                    Container(
                      width: btn
                          ? ScreenUtil().setWidth(110)
                          : ScreenUtil().setWidth(50),
                      alignment: Alignment.centerRight,
                      child: btn
                          ? CupertinoSwitch(
                              value: true,
                              onChanged: (bool val) {},
                            )
                          : Icon(
                              Icons.chevron_right,
                              color: Color(0xffe6e6e6),
                            ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
