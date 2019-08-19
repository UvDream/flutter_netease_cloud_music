/*
 * @Author: wangzhongjie
 * @Date: 2019-08-19 16:51:48
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-19 17:00:35
 * @Description: 歌单作者以及简介
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _imgAvatar(),
          _description(),
        ],
      ),
    );
  }

// 头像区域
  Widget _imgAvatar() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            width: ScreenUtil().setWidth(280),
            height: ScreenUtil().setWidth(280),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: FadeInImage.assetNetwork(
                placeholder: 'images/place_block.png',
                image:
                    'http://p2.music.126.net/yWT7cg3Qgl2ngqq3FztnWQ==/109951164291056003.jpg',
                fit: BoxFit.fill,
              ),
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
                  '10万',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // 作者以及简介
  Widget _description() {
    return Container(
      margin: EdgeInsets.only(left: ScreenUtil().setWidth(35)),
      color: Colors.red,
      width: ScreenUtil().setWidth(370),
      height: ScreenUtil().setWidth(280),
      child: Column(
        children: <Widget>[
          Text(
            '夏日的热浪,一起摇摆,让我们激情这个夏天呵呵',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(38),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
