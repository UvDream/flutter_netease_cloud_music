/*
 * @Author: wangzhongjie
 * @Date: 2019-02-18 17:08:30
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-07-26 10:48:15
 * @Description: 发现
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import './title_area/search.dart';

class FindPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {},
          child: Container(
            child: Icon(
              IconData(0xe64f, fontFamily: 'IconFont'),
              size: 20,
            ),
          ),
        ),
        title: SearchArea(),
        elevation: 0,
        centerTitle: true,
        actions: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
              width: 54,
              child: Icon(
                IconData(0xe649, fontFamily: 'IconFont'),
                size: 20,
              ),
            ),
          )
        ],
      ),
      body: Text("发现"),
    );
  }
}
