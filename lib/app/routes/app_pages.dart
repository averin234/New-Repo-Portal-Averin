import 'package:get/get.dart';

import '../modules/detail_produk/bindings/detail_produk_binding.dart';
import '../modules/detail_produk/views/detail_produk_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/informasi/bindings/informasi_binding.dart';
import '../modules/informasi/views/informasi_view.dart';
import '../modules/kontak/bindings/kontak_binding.dart';
import '../modules/kontak/views/kontak_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/tentang_aplikasi/bindings/tentang_aplikasi_binding.dart';
import '../modules/tentang_aplikasi/views/tentang_aplikasi_view.dart';
import '../modules/tentang_kami/bindings/tentang_kami_binding.dart';
import '../modules/tentang_kami/views/tentang_kami_view.dart';
import '../modules/tentang_setting/bindings/tentang_setting_binding.dart';
import '../modules/tentang_setting/views/tentang_setting_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PRODUK,
      page: () => const DetailProdukView(),
      binding: DetailProdukBinding(),
    ),
    GetPage(
      name: _Paths.TENTANG_KAMI,
      page: () => const TentangKamiView(),
      binding: TentangKamiBinding(),
    ),
    GetPage(
      name: _Paths.KONTAK,
      page: () => const KontakView(),
      binding: KontakBinding(),
    ),
    GetPage(
      name: _Paths.INFORMASI,
      page: () => const InformasiView(),
      binding: InformasiBinding(),
    ),
    GetPage(
      name: _Paths.TENTANG_APLIKASI,
      page: () => const TentangAplikasiView(),
      binding: TentangAplikasiBinding(),
    ),
    GetPage(
      name: _Paths.TENTANG_SETTING,
      page: () => const TentangSettingView(),
      binding: TentangSettingBinding(),
    ),
  ];
}
