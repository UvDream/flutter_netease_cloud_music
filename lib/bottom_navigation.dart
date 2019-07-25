import 'package:flutter/material.dart';
import './pages/find/find.dart';
import './pages/account/account.dart';
import './pages/my/my.dart';
import './pages/friend/friend.dart';
import './pages/video/video.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['发现', '视频', '我的', '朋友', '账号'];
  /*
   * 存放5个页面，跟fragmentList一样
   */
  var _pageList;

  /*
   * 根据选择获得对应的normal或是press的img
   */
  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  /*
   * 获取bottomTab的颜色和文字
   */
  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 10.0, color: const Color(0xffD43C33)));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 10.0, color: const Color(0xff515151)));
    }
  }

  /*
   * 根据image路径获取图片
   */
  Image getTabImage(path) {
    return new Image.asset(path, width: 30.0, height: 30.0);
  }

  void initData() {
    /*
     * 初始化选中和未选中的icon
     */
    tabImages = [
      [
        getTabImage('images/bottom/find.png'),
        getTabImage('images/bottom/find_selected.png')
      ],
      [
        getTabImage('images/bottom/video.png'),
        getTabImage('images/bottom/video_selected.png')
      ],
      [
        getTabImage('images/bottom/my.png'),
        getTabImage('images/bottom/my_selected.png')
      ],
      [
        getTabImage('images/bottom/friend.png'),
        getTabImage('images/bottom/friend_selected.png')
      ],
      [
        getTabImage('images/bottom/account.png'),
        getTabImage('images/bottom/account_selected.png')
      ],
    ];
    /*
     * 5个子界面
     */
    _pageList = [
      new FindPage(),
      new VideoPage(),
      new MyPage(),
      new FriendPage(),
      new AccountPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    //初始化数据
    initData();
    return Scaffold(
        body: _pageList[_tabIndex],
        bottomNavigationBar: new BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: getTabIcon(0), title: getTabTitle(0)),
            new BottomNavigationBarItem(
                icon: getTabIcon(1), title: getTabTitle(1)),
            new BottomNavigationBarItem(
                icon: getTabIcon(2), title: getTabTitle(2)),
            new BottomNavigationBarItem(
                icon: getTabIcon(3), title: getTabTitle(3)),
            new BottomNavigationBarItem(
                icon: getTabIcon(4), title: getTabTitle(4)),
          ],
          type: BottomNavigationBarType.fixed,
          //默认选中首页
          currentIndex: _tabIndex,
          //点击事件
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ));
  }
}
