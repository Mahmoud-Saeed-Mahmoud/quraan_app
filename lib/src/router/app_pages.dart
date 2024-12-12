import 'package:get/get.dart';
import 'package:quraan_app/src/router/app_router.dart';
import 'package:quraan_app/src/views/surah_index/surah_index.dart';
import 'package:quraan_app/src/views/surah_index/widgets/surah.dart';

import '../bindings/surah_bindings.dart';
import '../bindings/surah_index_bindings.dart';
import '../views/home/home_screen.dart';

abstract class AppPages {
  static List<GetPage> appPages = [
    GetPage(
      name: AppRouter.homeName,
      title: AppRouter.homeName,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: AppRouter.surahIndexName,
      title: AppRouter.surahIndexTitle,
      bindings: [
        SurahIndexBindings(),
      ],
      page: () => const SurahIndex(),
      children: [
        GetPage(
          name: AppRouter.surah,
          title: AppRouter.surah,
          bindings: [
            SurahBindings(),
          ],
          page: () => const Surah(),
        ),
      ],
    ),
  ];
}
