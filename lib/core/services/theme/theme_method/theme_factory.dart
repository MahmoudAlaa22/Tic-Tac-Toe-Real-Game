import 'dart:developer';

import '/core/core_export.dart';

abstract class ThemeCustom {
  ThemeData getThemeData();
  String getThemeLogo();
}

class ThemeFactory {
  static ThemeCustom getThemeCustom({required String? theme}) {
    log('theme is $theme');
    if (theme.isNullOrEmpty) {
      return LightTheme();
    } else {
      return _getTheme(theme!);
    }
  }

  static _getTheme(String theme) {
    if (theme == AppThemeMode.LIGHT.name) {
      return LightTheme();
    } else if (theme == AppThemeMode.DARK.name) {
      return DarkTheme();
    } else {
      return LightTheme();
    }
  }
}
