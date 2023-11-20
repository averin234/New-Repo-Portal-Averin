import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tentang_aplikasi_controller.dart';

class TentangAplikasiView extends GetView<TentangAplikasiController> {
  const TentangAplikasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
        centerTitle: false,
      ),
      body: const Center(
        child: Text(
          'TentangAplikasiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
