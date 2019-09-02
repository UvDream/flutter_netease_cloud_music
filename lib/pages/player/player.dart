/*
 * @Author: wangzhongjie
 * @Date: 2019-09-02 09:23:21
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-09-02 10:19:16
 * @Description: 播放界面
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';

class PlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            child: Icon(IconData(0xe707, fontFamily: 'IconFont'),
                color: Colors.black),
          ),
        ),
        centerTitle: true,
        title: Text('播放界面'),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Text('播放界面'),
      ),
    );
  }
}
