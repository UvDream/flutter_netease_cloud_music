/*
 * @Author: wangzhongjie
 * @Date: 2019-08-19 16:51:48
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-20 15:03:46
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
          ),
          _authLine(),
          _message()
        ],
      ),
    );
  }

  Widget _authLine() {
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
                    image:
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566277180648&di=cdd2dd183fff7739ca8f9801616500e4&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201711%2F10%2F20171110225150_ym2jw.jpeg',
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
            margin: EdgeInsets.only(left: 4),
            child: Text(
              '解忧杂货店一号铺',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Icon(Icons.chevron_right, color: Colors.white),
        ],
      ),
    );
  }

  Widget _message() {
    return Container(
      margin: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
      child: Row(
        children: <Widget>[
          Container(
            width: ScreenUtil().setWidth(245),
            child: Text(
              '你常常会说你和我道不同不为谋,可以成为敌人',
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
