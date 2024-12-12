import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quraan_app/src/configs/surah_map.dart';

import '../../controllers/surah_index_controller.dart';
import '../../router/app_router.dart';

class SurahIndex extends GetView<SurahIndexController> {
  const SurahIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('فهرس القرآن الكريم'),
      ),
      body: Align(
        alignment: AlignmentDirectional.topStart,
        child: ListView.builder(
          padding: const EdgeInsets.all(20),
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(
                  surahMapAr.values.elementAt(index),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                leading: const Icon(Icons.book),
                onTap: () {
                  Get.toNamed(
                    '${AppRouter.surahIndexName}/${surahMapAr.keys.elementAt(index)}',
                    parameters: {
                      "surahName": surahMapAr.values.elementAt(index),
                      "readerName": controller.readerName ?? "",
                    },
                  );
                },
              ),
            );
          },
          itemCount: surahMapAr.values.length,
        ),
      ),
    );
  }
}
