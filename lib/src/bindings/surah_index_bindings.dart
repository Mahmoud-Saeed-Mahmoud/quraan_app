import 'package:get/get.dart';

import '../controllers/surah_index_controller.dart';

class SurahIndexBindings extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(
        () => SurahIndexController(),
        fenix: true,
      ),
    ];
  }
}
