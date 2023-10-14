// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core_export.dart';

class AppPrefKey{
static const String PREFS_KEY_LANG = "PREFS_KEY_LANG";
static const String PREFS_KEY_ONBOARDING_SCREEN = "PREFS_KEY_ONBOARDING_SCREEN";
static const String PREFS_KEY_IS_USER_LOGGED_IN = "PREFS_KEY_IS_USER_LOGGED_IN";
static const String PREFS_KEY_TOKEN = "PREFS_KEY_TOKEN";
}

class AppPreferences {
  SharedPreferences sharedPreferences;
  AppPreferences({
    required this.sharedPreferences,
  });
  Future<String> getAppLanguage() async {
    String? language = sharedPreferences.getString(AppPrefKey.PREFS_KEY_LANG);

    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.ENGLISH.getValue();
    }
  }

  Future<void> setLanguageChanged() async {
    String currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.ARABIC.getValue()) {
      // save prefs with english lang
      sharedPreferences.setString(
          AppPrefKey.PREFS_KEY_LANG, LanguageType.ENGLISH.getValue());
    } else {
      // save prefs with arabic lang
      sharedPreferences.setString(
          AppPrefKey.PREFS_KEY_LANG, LanguageType.ARABIC.getValue());
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

  Future<void> setOnBoardingScreenViewed() async {
    sharedPreferences.setBool(AppPrefKey.PREFS_KEY_ONBOARDING_SCREEN, true);
  }

  Future<bool> isOnBoardingScreenViewed() async {
    return sharedPreferences.getBool(AppPrefKey.PREFS_KEY_ONBOARDING_SCREEN) ?? false;
  }

  Future<void> setUserToken({required String token}) async {
    sharedPreferences.setString(AppPrefKey.PREFS_KEY_TOKEN, token);
  }

  Future<String> getUserToken() async {
    return sharedPreferences.getString(AppPrefKey.PREFS_KEY_TOKEN) ?? "";
  }

  Future<void> setIsUserLoggedIn() async {
    sharedPreferences.setBool(AppPrefKey.PREFS_KEY_IS_USER_LOGGED_IN, true);
  }

  Future<bool> isUserLoggedIn() async {
    return sharedPreferences.getBool(AppPrefKey.PREFS_KEY_IS_USER_LOGGED_IN) ?? false;
  }

  Future<void> logout() async {
    sharedPreferences.remove(AppPrefKey.PREFS_KEY_IS_USER_LOGGED_IN);
  }

}
