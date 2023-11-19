import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'data_produk.dart';

class API {
  static const _url = 'https://averin.co.id/';
  static const _baseUrl = '${_url}api/v1';

  static Future<Produk>produkaverin () async {
    var response = await Dio().get(
      '$_baseUrl?id=produk',
    );

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = response.data;
      final obj = Produk.fromJson(jsonDecode(response.data));
      if (obj.msg == 'Invalid token: Expired') {
        Get.snackbar(
          obj.code.toString(),
          obj.msg.toString(),
        );
      }
      return obj;
    } else {
      throw Exception('Failed to load data');
    }
  }

}
