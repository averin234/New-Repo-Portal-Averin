import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../routes/app_pages.dart';
import '../../endpoint/data_produk.dart';
import '../../endpoint/fetch_data.dart';

class CardProduk extends StatelessWidget {
  CardProduk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
        future: API.fetchAPI(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.toString());
          } else {
            return Center(child: CircularProgressIndicator(),);
          }
        }
    );
  }
}

