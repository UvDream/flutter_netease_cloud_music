import 'package:flutter/material.dart';

class SongListPage extends StatelessWidget {
  final String songListId;
  SongListPage(this.songListId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        // headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        //   return <Widget>[
        //     SliverOverlapAbsorber(
        //       handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        //       child: SliverAppBar(
        //         leading: Icon(Icons.arrow_back_ios),
        //         title: Text('歌单'),
        //         expandedHeight: 200.0,
        //         pinned: true,
        //         centerTitle: true,
        //         flexibleSpace: FlexibleSpaceBar(
        //           centerTitle: true,
        //           title: Container(
        //             color: Colors.red,
        //             height: 50,
        //             child: Text('收藏歌单'),
        //           ),
        //           background: Stack(
        //             children: <Widget>[
        //               ConstrainedBox(
        //                 constraints: const BoxConstraints.expand(),
        //                 child: Image.network(
        //                   'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545738629147&di=22e12a65bbc6c4123ae5596e24dbc5d3&imgtype=0&src=http%3A%2F%2Fpic30.photophoto.cn%2F20140309%2F0034034413812339_b.jpg',
        //                   fit: BoxFit.fitWidth,
        //                 ),
        //               ),
        //               Positioned(
        //                 bottom: 0,
        //                 child: Container(
        //                   child: BackdropFilter(
        //                     filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        //                     child: Opacity(
        //                       opacity: .5,
        //                       child: Container(
        //                         child: Text('测试'),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //               )
        //             ],
        //           ),
        //         ),
        //       ),
        //     )
        //   ];
        // },
        headerSliverBuilder: _sliverBuilder,
        body: ListView.builder(
          padding: EdgeInsets.only(top: 0),
          itemBuilder: _itemBuilder,
          itemCount: 15,
        ),
      ),
    );
  }

  List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      SliverAppBar(
        centerTitle: true,
        title: Text('这是标题'),
        expandedHeight: 200.0,
        floating: false,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
        ),
      ),
      SliverPersistentHeader(
        pinned: true,
        delegate: _SliverAppBarDelegate(),
      )
    ];
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return ListTile(
      leading: Icon(Icons.android),
      title: Text('无与伦比的标题+$index'),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
        color: Colors.pink,
        alignment: Alignment.center,
        child: Text('我是一个头部部件',
            style: TextStyle(color: Colors.white, fontSize: 30.0)));
  } // 头部展示内容

  @override
  double get maxExtent => 50.0; // 最大高度

  @override
  double get minExtent => 50.0; // 最小高度

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}
