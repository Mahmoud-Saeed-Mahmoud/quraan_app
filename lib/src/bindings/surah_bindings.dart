import 'package:get/get.dart';

import '../controllers/surah_controller.dart';

class SurahBindings extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(
        () => SurahController(),
        fenix: true,
      ),
    ];
  }
}
