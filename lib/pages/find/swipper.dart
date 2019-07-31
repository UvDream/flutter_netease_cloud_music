import 'package:flutter/material.dart';
import '../../config/http.dart';
import '../../config/service_url.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwiperPage extends StatefulWidget {
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List<Map> SwiperList = [];
  var formData = {'type': 'iphone'};
  @override
  void initState() {
    super.initState();
    _getBanner();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetch(servicePath['findSwiper'], formData: formData),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            margin: EdgeInsets.only(top: 15),
            width: ScreenUtil().setWidth(688),
            height: ScreenUtil().setHeight(265),
            // decoration: BoxDecoration(
            //   border: Border.all(width: 2, color: Colors.red),
            //   borderRadius: BorderRadius.circular(ScreenUtil().setHeight(95)),
            // ),
            child: Swiper(
              itemWidth: 100,
              pagination: SwiperPagination(),
              autoplay: true,
              itemCount: SwiperList.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    onTap: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: FadeInImage.assetNetwork(
                        placeholder: 'images/bottom/find.png',
                        image: '${SwiperList[index]['imageUrl']}',
                        fit: BoxFit.fill,
                      ),
                    ));
              },
            ),
          );
        } else {
          return Text('数据加载中');
        }
      },
    );
  }

  void _getBanner() async {
    print('开始');
    var formData = {'type': 'iphone'};
    await fetch(servicePath['findSwiper'], formData: formData).then((val) {
      // print('返回参数了');
      List<Map> newGoodsList = (val['banners'] as List).cast();
      // print(newGoodsList);
      setState(() {
        SwiperList = newGoodsList;
      });
    });
  }
}
