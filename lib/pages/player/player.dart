/*
 * @Author: wangzhongjie
 * @Date: 2019-09-02 09:23:21
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-09-02 10:03:40
 * @Description: 播放界面
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';

// class PlayerPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

//   }
// }
class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('播放界面'),
      ),
      body: Container(
        child: Text('播放界面'),
      ),
    );
  }
}
