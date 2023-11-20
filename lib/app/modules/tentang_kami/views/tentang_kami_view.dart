import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/widgets_tentang_kami/card_pegawai.dart';
import '../../widgets/widgets_tentang_kami/info_tentang.dart';
import '../controllers/tentang_kami_controller.dart';

class TentangKamiView extends GetView<TentangKamiController> {
  const TentangKamiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Kami'),
        centerTitle: false,
      ),
      body: const Expanded(child:
      SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            infotentang(),
            Text('Manger', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child:
              CardTentangKami(),
            ),
          ]
      ),
      ),
      ),
    );
  }
}
