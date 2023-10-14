import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../core/core_export.dart';

class AppStrings{
  static late AppLocalizations tr;
  static get(BuildContext context)=>tr= AppLocalizations.of(context)!;
}



const String ARABIC = "ar";
const String ENGLISH = "en";
const String PATH_LOCALISATIONS = "assets/translations";
const Locale ARABIC_LOCAL = Locale("ar", "SA");
const Locale ENGLISH_LOCAL = Locale("en", "US");



class LanguageManager{
  final SharedPreferences sharedPreferences;

  LanguageManager({required this.sharedPreferences});
    Future<String> getAppLanguage() async {
    String? language = sharedPreferences.getString(AppPrefKey.PREFS_KEY_LANG);

    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.ENGLISH.getValue();
    }
  }
    Future<Locale> getLocal() async {
    String currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.ARABIC.getValue()) {
      // return arabic local
      return ARABIC_LOCAL;
    } else {
      // return english local
      return ENGLISH_LOCAL;
    }
  }
}