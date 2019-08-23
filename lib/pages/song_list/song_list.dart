/*
 * @Author: wangzhongjie
 * @Date: 2019-08-09 15:24:30
 * @LastEditors: wangzhongjie
 * @LastEditTime: 2019-08-23 15:49:29
 * @Description: 歌单详情进入页面
 * @Email: UvDream@163.com
 */
import 'package:flutter/material.dart';
import './bottom_list.dart';
import 'package:async/async.dart';
import './top_area.dart';
import '../../provider/song_list/song_detail.dart';
import 'package:provider/provider.dart';

class SongListPage extends StatefulWidget {
  final String songListId;
  SongListPage(this.songListId);
  @override
  _SongListPageState createState() => _SongListPageState();
}

class _SongListPageState extends State<SongListPage> {
  AsyncMemoizer _memoizer = AsyncMemoizer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _getDetail(context),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.waiting) {
            return NestedScrollView(
              headerSliverBuilder: _sliverBuilder,
              body:
                  BottomList(Provider.of<SongDetailProvider>(context).songList),
            );
          } else {
            return Scaffold(
              appBar: AppBar(
                title: Text(''),
                elevation: 0,
              ),
              body: Center(
                child: Text('数据加载中!'),
              ),
            );
          }
        },
      ),
    );
  }

  List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      TopArea(),
      // SliverPersistentHeader(
      //   pinned: true,
      //   delegate: _SliverAppBarDelegate(),
      // )
    ];
  }

  _getDetail(BuildContext context) {
    return _memoizer.runOnce(() async {
      return await Provider.of<SongDetailProvider>(context)
          .getSongDetail(widget.songListId);
    });
    // await Provider.of<SongDetailProvider>(context)
    //     .getSongDetail(widget.songListId);
    // return true;
  }
}
// class SongListPage extends StatelessWidget {
//   final String songListId;
//   SongListPage(this.songListId);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: _getDetail(context),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return NestedScrollView(
//               headerSliverBuilder: _sliverBuilder,
//               body: BottomList(),
//             );
//           } else {
//             return Scaffold(
//               appBar: AppBar(title: Text('')),
//               body: Center(
//                 child: Text('数据加载中!'),
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }

//   List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
//     return <Widget>[
//       TopArea(),
//       // SliverPersistentHeader(
//       //   pinned: true,
//       //   delegate: _SliverAppBarDelegate(),
//       // )
//     ];
//   }

//   Future _getDetail(BuildContext context) async {
//     await Provider.of<SongDetailProvider>(context).getSongDetail(songListId);
//     return true;
//   }
// }

// 废弃的顶部
// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Container(
//         decoration: BoxDecoration(
//           color: Colors.red,
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(10), topRight: Radius.circular(10)),
//         ),
//         alignment: Alignment.center,
//         child: Text('我是一个头部部件',
//             style: TextStyle(color: Colors.white, fontSize: 30.0)));
//   }
//   // 头部展示内容

//   @override
//   double get maxExtent => 50.0; // 最大高度

//   @override
//   double get minExtent => 50.0; // 最小高度

//   @override
//   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
// }
