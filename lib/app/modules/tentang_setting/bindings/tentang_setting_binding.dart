import 'package:get/get.dart';

import '../controllers/tentang_setting_controller.dart';

class TentangSettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TentangSettingController>(
      () => TentangSettingController(),
    );
  }
}
