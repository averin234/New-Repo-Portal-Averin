import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portal_sirs/app/modules/endpoint/data_produk.dart';

import '../../../routes/app_pages.dart';
import '../../endpoint/fetch_data.dart';
import 'listview_card_produk.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 9, // Ganti sesuai dengan jumlah item yang diinginkan
      itemBuilder: (context, index) {
        return Container();
      },
    );
  }
}
