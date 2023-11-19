import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'data_produk.dart';

import 'package:dio/dio.dart';

class API {
  static const _url = 'https://averin.co.id/';
  static const _baseUrl = '$_url/api/v1';

  static Future<Produk> fetchData({String? produk}) async {
    try {
      var response = await Dio().get(
        _baseUrl,
        queryParameters: {'id': produk},
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
      );

      if (response.statusCode == 200) {
        return Produk.fromJson(response.data);
      } else {
        throw Exception('Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print(error.toString());
      throw Exception('Failed to load data');
    }
  }
}
