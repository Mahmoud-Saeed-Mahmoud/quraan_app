import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../router/app_pages.dart';
import '../router/app_router.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      textDirection: TextDirection.rtl,
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.initialRoute,
      getPages: AppPages.appPages,
    );
  }
}
