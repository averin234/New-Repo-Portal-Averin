import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sliver_app_bar_builder/sliver_app_bar_builder.dart';
import '../../widgets/widgets_home/fitur.dart';
import '../controllers/detail_produk_controller.dart';

class DetailProdukView extends GetView<DetailProdukController> {
  const DetailProdukView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  automaticallyImplyLeading: true,
                  floating: true,
                  pinned: true,
                  snap: true,
                  stretch: true,
                  backgroundColor: Colors.white,
                  leading: IconButton(
                      icon: const Icon(Icons.arrow_circle_left_rounded),
                      color: Colors.blue,
                      iconSize: 40,
                      onPressed: () {
                        Get.back();
                      }),
                  title: Text(
                    "",
                    style: TextStyle (
                        fontWeight: FontWeight.bold),
                  ),
                  actions: const [],
                ),
                // Other Sliver Widgets
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        height: 210,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/D-medis.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 120,
                                ),
                              ],
                            ),
                          ),
                        ),
                      Container(
                        margin: EdgeInsets.only(right: 10, left: 10),
                        child: Text(
                          'Tentang D-Medis',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                          maxLines: 4, // Ganti angka sesuai dengan jumlah maksimum baris yang Anda inginkan
                          overflow: TextOverflow.ellipsis, // Jika teks melebihi jumlah maksimum baris, tampilkan elipsis (...)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10, left: 10, top: 10),
                        child: Text(
                        'Aplikasi D-medis Berbasis Cloud sehingga memudahkan Klinik dalam melakukan Manajemen Pelayanan dan Pelaporan Melayani Pasien lebih cepat, mudah dan Akurat',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 12,),
                        maxLines: 4, // Ganti angka sesuai dengan jumlah maksimum baris yang Anda inginkan
                        overflow: TextOverflow.ellipsis, // Jika teks melebihi jumlah maksimum baris, tampilkan elipsis (...)
                      ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10, left: 10,top: 10),
                        child: Text(
                          'Fitur D-Medis',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                          maxLines: 4, // Ganti angka sesuai dengan jumlah maksimum baris yang Anda inginkan
                          overflow: TextOverflow.ellipsis, // Jika teks melebihi jumlah maksimum baris, tampilkan elipsis (...)
                        ),
                      ),
                      fitur(),
                      Container(
                        margin: EdgeInsets.only(right: 10, left: 10, top: 200),
                        child:
                      ElevatedButton(
                        onPressed: () {
                          // Tambahkan aksi yang diinginkan ketika tombol ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // Warna latar belakang tombol
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // Border radius 10
                          ),
                          elevation: 5, // Elevasi (shadow) tombol
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Lihat Halaman Website",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
  }
}

