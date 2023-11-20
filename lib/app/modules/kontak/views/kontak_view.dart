import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kontak_controller.dart';

class KontakView extends GetView<KontakController> {
  const KontakView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontak'),
        centerTitle: false,
      ),
      body: const Center(
        child: Text(
          'KontakView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
