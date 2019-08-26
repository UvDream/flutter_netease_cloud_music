import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../provider/song_list/song_detail.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10.0),
            width: ScreenUtil().setWidth(750),
            height: ScreenUtil().setHeight(98),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1, color: Colors.black12),
              ),
            ),
            child: Text(
              Provider.of<SongDetailProvider>(context).title,
              style: TextStyle(color: Colors.black54),
            ),
          ),
          _rowElement(0xe7a3, '选择歌曲排序'),
          _rowElement(0xe6d9, '清空下载文件'),
          _rowElement(0xe61d, '举报'),
        ],
      ),
    );
  }

  Widget _rowElement(icon, title) {
    return InkWell(
      onTap: () {
        print('点击举报');
      },
      child: Container(
        height: ScreenUtil().setHeight(98),
        child: Row(
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(50),
              margin: EdgeInsets.only(left: 5, right: 5),
              child: Icon(
                IconData(
                  icon,
                  fontFamily: "IconFont",
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: ScreenUtil().setWidth(680),
              height: ScreenUtil().setHeight(98),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: Colors.black12),
                ),
              ),
              child: Text('$title'),
            )
          ],
        ),
      ),
    );
  }
}
