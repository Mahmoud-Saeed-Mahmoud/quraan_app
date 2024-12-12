import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quraan_app/src/router/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: AlignmentDirectional.topStart,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Card(
              child: ListTile(
                title: const Text('عبدالباسط عبدالصمد'),
                leading: const Icon(Icons.mic),
                onTap: () {
                  Get.toNamed(
                    AppRouter.surahIndexName,
                    parameters: {"readerName": "عبدالباسط عبدالصمد"},
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('اسلام صبحى'),
                leading: const Icon(Icons.mic),
                onTap: () {
                  Get.toNamed(
                    AppRouter.surahIndexName,
                    parameters: {"readerName": "اسلام صبحى"},
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('محمد صديق المنشاوى'),
                leading: const Icon(Icons.mic),
                onTap: () {
                  Get.toNamed(
                    AppRouter.surahIndexName,
                    parameters: {"readerName": "محمد صديق المنشاوى"},
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('ياسر الدوسرى'),
                leading: const Icon(Icons.mic),
                onTap: () {
                  Get.toNamed(
                    AppRouter.surahIndexName,
                    parameters: {"readerName": "ياسر الدوسرى"},
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('ماهر المعقيلى'),
                leading: const Icon(Icons.mic),
                onTap: () {
                  Get.toNamed(
                    AppRouter.surahIndexName,
                    parameters: {"readerName": "ماهر المعقيلى"},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
