import 'package:dio/dio.dart';
import 'dart:async';

Future fetch(url, {formData}) async {
  try {
    print('-------------------开始调试接口,传入的参数-------------');
    print(formData);
    Response res;
    Dio dio = new Dio();
    if (formData == null) {
      res = await dio.get(url);
    } else {
      res = await dio.get(url);
    }
    if (res.statusCode == 200) {
      return res.data;
    } else {
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  } catch (e) {
    return print('ERROR:======>${e}');
  }
}
