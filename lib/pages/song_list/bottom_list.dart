import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomList extends StatelessWidget {
  final List songList;
  BottomList(this.songList);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 0),
        itemBuilder: _itemBuilder,
        itemCount: songList.length,
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    // return ListTile(
    //   leading: Text('${index + 1}'),
    //   title: Text('${songList[index]['name']}'),
    //   subtitle: Text('副标题'),
    // );
    print('列表数据------');
    print(songList[0]['mv']);
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: ScreenUtil().setHeight(70),
        child: Row(
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(82),
              alignment: Alignment.center,
              child: Text(
                '${index + 1}',
                style: TextStyle(color: Colors.black54),
              ),
            ),
            Container(
              // color: Colors.red,
              width: ScreenUtil().setWidth(500),
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '${songList[index]['name']}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        _authLine(songList[index]['ar']),
                        Text(
                          '-',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: ScreenUtil().setSp(20),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '${songList[index]['al']['name']}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: ScreenUtil().setSp(20),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: ScreenUtil().setWidth(100),
                height: ScreenUtil().setHeight(70),
                // color: Colors.green,
                child: songList[index]['mv'] != 0
                    ? Icon(
                        IconData(0xe623, fontFamily: 'IconFont'),
                        size: 20,
                        color: Colors.black45,
                      )
                    : Text(''),
              ),
            ),
            InkWell(
                onTap: () {},
                child: Container(
                  width: ScreenUtil().setWidth(60),
                  height: ScreenUtil().setHeight(70),
                  child: Icon(
                    IconData(
                      0xe612,
                      fontFamily: "IconFont",
                    ),
                    color: Colors.black45,
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _authLine(list) {
    var name = '';
    for (var item in list) {
      if (name == '') {
        name = '$name' + '${item['name']}';
      } else {
        name = '$name' + '/' + '${item['name']}';
      }
    }
    return Text(
      name,
      style: TextStyle(
        color: Colors.black45,
        fontSize: ScreenUtil().setSp(20),
      ),
    );
  }
}
