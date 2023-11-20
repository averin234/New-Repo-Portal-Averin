import 'dart:convert';

import 'package:dio/dio.dart';

class API {
  static const _url = 'https://averin.co.id';
  static const _baseUrl = '${_url}/api/v1';

  static Future<List<dynamic>> fetchAPI() async {
    Dio dio = Dio();
      var response = await dio.get('https://fakestoreapi.com/products');
      // var response = await dio.post(
      //   _baseUrl + '?id=produk',
      //   options: Options(
      //     headers: <String, dynamic>{
      //       'Content-Type': 'application/json',
      //     },
      //   ),
      // );
        print(response.data);
        return response.data;
  }
}
