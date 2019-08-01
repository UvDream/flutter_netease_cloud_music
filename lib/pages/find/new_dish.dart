import 'package:flutter/material.dart';
import '../../config/http.dart';
import '../../config/service_url.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../provider/find/new_dish.dart';

class NewDishPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      color: Colors.white,
      width: ScreenUtil().setWidth(686),
      child: Column(
        children: <Widget>[
          _title(context),
          Text(Provider.of<NewDishProvider>(context).isLeft.toString()),
        ],
      ),
    ));
  }

  Widget _title(context) {
    return Container(
        height: ScreenUtil().setHeight(80),
        child: Row(
          children: <Widget>[
            Container(
                width: ScreenUtil().setWidth(532), child: _titleText(context)),
            Container(
              width: ScreenUtil().setWidth(154),
              child: Container(
                width: ScreenUtil().setWidth(154),
                height: ScreenUtil().setHeight(60),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    border: Border.all(width: 1, color: Colors.black12)),
                child: Text(
                  '新歌推荐',
                  style: TextStyle(fontSize: ScreenUtil().setSp(26)),
                ),
              ),
            )
          ],
        ));
  }

  Widget _titleText(context) {
    return Row(
      children: <Widget>[
        InkWell(
          onTap: () {
            Provider.of<NewDishProvider>(context).changeSelect(true);
          },
          child: Container(
            alignment: Alignment.centerLeft,
            height: ScreenUtil().setWidth(40),
            width: ScreenUtil().setWidth(82),
            child: Text(
              '新碟',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(26),
                  color: Provider.of<NewDishProvider>(context).isLeft
                      ? Colors.black
                      : Colors.black26),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Provider.of<NewDishProvider>(context).changeSelect(false);
          },
          child: Container(
            alignment: Alignment.centerRight,
            height: ScreenUtil().setWidth(40),
            width: ScreenUtil().setWidth(82),
            decoration: BoxDecoration(
                border:
                    Border(left: BorderSide(width: 1, color: Colors.black12))),
            child: Text(
              '新歌',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(26),
                  color: Provider.of<NewDishProvider>(context).isLeft
                      ? Colors.black26
                      : Colors.black),
            ),
          ),
        ),
      ],
    );
  }

  void getNewDish() async {
    await fetch(servicePath['newDishApi']).then((val) {
      print(val);
    });
  }
}
