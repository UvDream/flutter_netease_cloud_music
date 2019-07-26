import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MyPagination extends SwiperPlugin {
  final SwiperPaginationBuilder builder;

  MyPagination({@required this.builder}) : assert(builder != null);

  @override
  Widget build(BuildContext context, SwiperPluginConfig config) {
    return builder(context, config);
  }
}