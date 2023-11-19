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
    return FutureBuilder<Produk>(
      future: API.produkaverin(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          if (snapshot.data != null) {
            final title = snapshot.data!.title; // Ambil data hutang dari objek respons.
            final description = snapshot.data!.description; // Ambil data bayar dari objek respons.
            final image = snapshot.data!.image; // Ambil data bayar dari objek respons.
            return  Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: InkWell(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_PRODUK);
                },
                child : Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        height: 100,// Ganti dengan gambar atau widget yang sesuai
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:NetworkImage('$image',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('$title',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('$description',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return Text('Tidak ada data');
          }
        }
      },
    );
  }
  }

