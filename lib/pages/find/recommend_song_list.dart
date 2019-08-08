/*
 * @Author: wangzhongjie
 * @Date: 2019-07-29 11:43:47
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-08 14:56:24
 * @Description: 推荐歌单
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/http.dart';
import '../../config/service_url.dart';
import '../../utils/number.dart';
import '../../routers/application.dart';

class RecommendSongList extends StatefulWidget {
  @override
  _RecommendSongListState createState() => _RecommendSongListState();
}

class _RecommendSongListState extends State<RecommendSongList> {
  List<Map> SongListData = [];
  @override
  void initState() {
    super.initState();
    _getSongList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      color: Colors.white,
      width: ScreenUtil().setWidth(686),
      child: Column(
        children: <Widget>[
          _title(),
          _songList(context),
        ],
      ),
    ));
  }

// 推荐歌单标题
  Widget _title() {
    return Container(
        height: ScreenUtil().setHeight(120),
        child: Row(
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(532),
              child: Text(
                '推荐歌单',
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(32),
                    fontWeight: FontWeight.bold),
              ),
            ),
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
                  '歌单广场',
                  style: TextStyle(fontSize: ScreenUtil().setSp(26)),
                ),
              ),
            )
          ],
        ));
  }

  // 推荐歌单
  Widget _songList(context) {
    if (SongListData.length > 0) {
      List<Widget> listWidget = SongListData.map((val) {
        return InkWell(
          onTap: () {
            Application.router.navigateTo(context, '/songList?id=${val['id']}');
          },
          child: Container(
            width: ScreenUtil().setWidth(218),
            child: Column(
              children: <Widget>[
                _songBlock(val),
                Text(
                  val['name'],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        );
      }).toList();
      return Wrap(
        spacing: 3,
        children: listWidget,
      );
    } else {
      return Center(
        child: Text('加载中'),
      );
    }
  }

  Widget _songBlock(val) {
    return Container(
      child: Stack(
        children: <Widget>[
          // Image.network(val['picUrl']),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: FadeInImage.assetNetwork(
              placeholder: 'images/place_block.png',
              image: val['picUrl'],
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            right: 4,
            top: 2,
            child: Row(
              children: <Widget>[
                Icon(
                  IconData(0xe62f, fontFamily: 'IconFont'),
                  color: Colors.white,
                  size: 15,
                ),
                Text(
                  '${getFormattedNumber(val['playCount'])}',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _getSongList() async {
    await fetch(servicePath['songListApi']).then((val) {
      // print('111$val');
      // print('------------------推荐歌单------------------------');
      List<Map> data = (val['result'] as List).cast();
      data.removeRange(6, data.length);
      // print(data);
      setState(() {
        SongListData = data;
      });
    });
  }
}
