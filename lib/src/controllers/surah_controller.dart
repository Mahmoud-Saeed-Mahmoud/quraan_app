import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class SurahController extends GetxController {
  final readerName = Get.parameters['readerName'];
  final surahName = Get.parameters['surahName'];
  final surahNumber = Get.parameters['surahNumber'];

  late final AudioPlayer player;

  @override
  Future<void> onClose() async {
    await player.stop();
    await player.dispose();
    super.onClose();
  }

  @override
  Future<void> onInit() async {
    switch (readerName) {
      case "عبدالباسط عبدالصمد":
        player = AudioPlayer()
          ..setAsset(
              'ABDEL-BASIT.ABDEL-SAMAD.MUJAWAD.FULL.HQ.BY-MAHMOUD-ZIED/$surahNumber.mp3');
        break;
      case "اسلام صبحى":
        player = AudioPlayer()
          ..setAsset('islam_sobhy_full_quraan/$surahNumber.mp3');
        break;
      case "محمد صديق المنشاوى":
        player = AudioPlayer()
          ..setAsset('Al-Minshawy_Muratal_Quran_vbr_mp3/$surahNumber.mp3');
        break;
      case "ياسر الدوسرى":
        player = AudioPlayer()..setAsset('dosry_full_quraan/$surahNumber.mp3');
        break;
      case "ماهر المعقيلى":
        player = AudioPlayer()..setAsset('maher_full_quraan/$surahNumber.mp3');
        break;
      default:
        player = AudioPlayer();
    }
    player.play();
    super.onInit();
  }
}
