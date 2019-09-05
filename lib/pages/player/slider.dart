/*
 * @Author: wangzhongjie
 * @Date: 2019-09-03 16:22:14
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-09-05 14:34:48
 * @Description: 进度条
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(100),
      child: Row(
        children: <Widget>[
          _time('03:10'),
          // _sliderBar(),
          _SliderBar(),
          _time('03:10'),
        ],
      ),
    );
  }

  Widget _time(time) {
    return Container(
      width: ScreenUtil().setWidth(80),
      alignment: Alignment.center,
      child: Text(
        '$time',
        style: TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(20)),
      ),
    );
  }

  // Widget _sliderBar() {
  //   return
  // }
}

class _SliderBar extends StatefulWidget {
  double sliderLength = 10;
  @override
  __SliderBarState createState() => __SliderBarState();
}

class __SliderBarState extends State<_SliderBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(590),
      child: Slider(
        value: widget.sliderLength,
        max: 100.0,
        min: 0.0,
        activeColor: Colors.white,
        inactiveColor: Colors.black12,
        onChanged: (val) {
          setState(() {
            widget.sliderLength = val;
          });
        },
      ),
    );
  }
}
