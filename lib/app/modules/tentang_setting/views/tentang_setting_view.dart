import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tentang_setting_controller.dart';

class TentangSettingView extends GetView<TentangSettingController> {
  const TentangSettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TentangSettingView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TentangSettingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
