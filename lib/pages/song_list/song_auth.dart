/*
 * @Author: wangzhongjie
 * @Date: 2019-08-19 16:51:48
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-26 10:54:58
 * @Description: 歌单作者以及简介
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../provider/song_list/song_detail.dart';
import 'package:provider/provider.dart';
import '../../utils/number.dart';

class AuthDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var message = Provider.of<SongDetailProvider>(context);
    return Container(
      margin: EdgeInsets.only(top: ScreenUtil().setHeight(142.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _imgAvatar(context, message.songImg, message.playCount),
          _description(context, message),
        ],
      ),
    );
  }

// 头像区域
  Widget _imgAvatar(context, imgUrl, count) {
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
                image: imgUrl,
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
                  '${getFormattedNumber(count)}',
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
  Widget _description(context, message) {
    return Container(
      margin: EdgeInsets.only(left: ScreenUtil().setWidth(35)),
      width: ScreenUtil().setWidth(370),
      height: ScreenUtil().setWidth(280),
      child: Column(
        children: <Widget>[
          Text(
            message.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(38),
              color: Colors.white,
            ),
          ),
          _authLine(message),
          _message(message)
        ],
      ),
    );
  }

  Widget _authLine(message) {
    return Container(
      margin: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
      child: Row(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: ScreenUtil().setWidth(66),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(66),
                  child: FadeInImage.assetNetwork(
                    placeholder: 'images/place_block.png',
                    image: message.avatarUrl,
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: ScreenUtil().setWidth(24),
                    height: ScreenUtil().setWidth(24),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(24)),
                    child: Icon(
                      IconData(0xe620, fontFamily: 'IconFont'),
                      size: 10,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
          Container(
            width: ScreenUtil().setWidth(250),
            margin: EdgeInsets.only(left: 4),
            child: Text(
              message.nickName,
              style: TextStyle(color: Colors.white),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Icon(Icons.chevron_right, color: Colors.white),
        ],
      ),
    );
  }

  Widget _message(message) {
    return Container(
      margin: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
      child: Row(
        children: <Widget>[
          Container(
            width: ScreenUtil().setWidth(320),
            child: Text(
              message.description == null ? '暂无描述' : message.description,
              style: TextStyle(color: Colors.white),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Icon(Icons.chevron_right, color: Colors.white),
        ],
      ),
    );
  }
}
