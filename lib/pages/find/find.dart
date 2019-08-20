/*
 * @Author: wangzhongjie
 * @Date: 2019-02-18 17:08:30
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-20 14:19:32
 * @Description: 发现
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import './search.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './swipper.dart';
import './top_navigation.dart';
import './recommend_song_list.dart';
import './new_dish.dart';
import '../../components/play.dart';
import '../../routers/application.dart';
import './Test.dart';

class FindPage extends StatefulWidget {
  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage>
    with AutomaticKeepAliveClientMixin {
  // 保持状态
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          // 改变状态栏字体颜色
          brightness: Brightness.light,
          // 改变状态栏背景颜色
          backgroundColor: Colors.white,
          titleSpacing: 0,
          leading: InkWell(
            onTap: () {},
            child: Container(
              // color: Colors.green,
              child: Icon(
                IconData(0xe64f, fontFamily: 'IconFont'),
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
          title: SearchArea(),
          elevation: 0,
          centerTitle: true,
          actions: <Widget>[PlayButton()],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  SwiperPage(),
                  TopNavigation(),
                  RecommendSongList(buildContext: context),
                  NewDishPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
