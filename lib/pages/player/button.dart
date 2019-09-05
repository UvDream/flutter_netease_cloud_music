import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BtnBar extends StatelessWidget {
  final int icon;
  final double size;
  BtnBar(this.icon, this.size);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(140),
      child: Icon(
        IconData(icon, fontFamily: "IconFont"),
        color: Colors.white,
        size: size,
      ),
    );
  }
}
