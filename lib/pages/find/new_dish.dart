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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _contentArea(context),
              _contentArea(context),
              _contentArea(context),
            ],
          )
        ],
      ),
    ));
  }

// 标题
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

// 标题切换新歌/新碟
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
                  fontSize: ScreenUtil().setSp(32),
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
                  fontSize: ScreenUtil().setSp(32),
                  color: Provider.of<NewDishProvider>(context).isLeft
                      ? Colors.black26
                      : Colors.black),
            ),
          ),
        ),
      ],
    );
  }

// 内容
  Widget _contentArea(conetxt) {
    return Container(
      width: ScreenUtil().setWidth(215),
      height: ScreenUtil().setWidth(290),
      margin: EdgeInsets.fromLTRB(
          ScreenUtil().setWidth(6),
          ScreenUtil().setWidth(16),
          ScreenUtil().setWidth(6),
          ScreenUtil().setWidth(30)),
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(215),
              height: ScreenUtil().setWidth(215),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FadeInImage.assetNetwork(
                      placeholder: 'images/place_block.png',
                      image:
                          'https://tempim-1256796114.cos-website.ap-shanghai.myqcloud.com/placeholder/260x260/ccc',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: 4,
                    right: 4,
                    child: Container(
                      width: ScreenUtil().setWidth(62),
                      height: ScreenUtil().setWidth(62),
                      padding: EdgeInsets.only(left: 3),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, .5),
                        borderRadius: BorderRadius.circular(62),
                      ),
                      child: Icon(
                        IconData(0xe613, fontFamily: 'IconFont'),
                        color: Color(0xffeb4d44),
                        size: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text(
              'data今日好声22211',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: ScreenUtil().setSp(24)),
            ),
            Text(
              'data今日好声音必须好',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(26), color: Colors.black45),
            ),
          ],
        ),
      ),
    );
  }

  void getNewDish() async {
    await fetch(servicePath['newDishApi']).then((val) {
      print(val);
    });
  }
}
