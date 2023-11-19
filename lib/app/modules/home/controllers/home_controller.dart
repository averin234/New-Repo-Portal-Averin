import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../endpoint/data_produk.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  RxList<Produk> produkList = <Produk>[].obs;

  void fetchData() async {
    try {
      var response = await Dio().get(
        'https://averin.co.id/api/v1?id=produk',
        queryParameters: {'id': '1', 'produk': 'AverinSIRs'},
      );

      if (response.statusCode == 200) {
        List<dynamic> jsonResponse = response.data;
        produkList.assignAll(jsonResponse.map((data) => Produk.fromJson(data)).toList());
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      print(error.toString());
    }
  }
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
