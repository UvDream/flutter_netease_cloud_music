/*
 * @Author: wangzhongjie
 * @Date: 2019-02-20 15:47:58
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-07-30 11:11:59
 * @Description: 我的
 * @Email: uvdream@163.com
 */
import 'package:flutter/material.dart';
import '../../components/play.dart';
import 'package:provider/provider.dart';
import '../../provider/count.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的音乐"),
        elevation: 1,
        centerTitle: true,
        actions: <Widget>[PlayButton()],
      ),
      body: Center(
        child: StreamBuilder(
          initialData: Provider.of<CounterBloc>(context).count,
          stream: Provider.of<CounterBloc>(context).stream,
          builder: (context, snapshot) {
            return Column(
              children: <Widget>[
                Text(Provider.of<CounterBloc>(context).count.toString()),
                RaisedButton(
                  child: Text("+"),
                  onPressed: () {
                    Provider.of<CounterBloc>(context).addCounter();
                  },
                ),
                RaisedButton(
                  child: Text("-"),
                  onPressed: () {
                    Provider.of<CounterBloc>(context).subCounter();
                  },
                ),
                //
              ],
            );
          },
        ),
      ),
    );
  }
}
