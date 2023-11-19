import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'data_produk.dart';

import 'package:dio/dio.dart';

class API {
  static const _url = 'https://averin.co.id';
  static const _baseUrl = '$_url/api/v1';

  static Future<Produk> fetchData() async {

      var response = await Dio().get(
        _baseUrl + '?id=produk',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
          method: 'GET',
          responseType: ResponseType.plain,
        ),
      );
      if (response.statusCode == 200) {
        return Produk.fromJson(response.data);
      } else {
        throw Exception('Failed to load data. Status code: ${response.statusCode}');
      }
  }
}
