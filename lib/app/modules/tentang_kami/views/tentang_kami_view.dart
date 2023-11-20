import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tentang_kami_controller.dart';

class TentangKamiView extends GetView<TentangKamiController> {
  const TentangKamiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TentangKamiView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TentangKamiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
