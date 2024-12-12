abstract class AppRouter {
  static const String initialRoute = homeName;

  static const String homeName = '/home';
  static const String homeTitle = 'الصفحة الرئيسية';
  static const String surahIndexName = '/surah-index';
  static const String surahIndexTitle = 'فهرس القرآن الكريم';
  static const String surah = '/:surahNumber';
}
