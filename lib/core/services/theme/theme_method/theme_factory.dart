import '/core/core_export.dart';

abstract class ThemeCustom {
  ThemeData get themeData;
  String get logo;
  // I will change this to a Model of Text Color has primary, secondary.
  TextColorModel get textColor;
  Color get activeColor;
  Color get inActiveColor;
  // Make a Bottom Bar Model has background color, active color, inActive color.
  BottomBarThemeModel get bottomBar;
  Color get boxBorderColor;
  Color get containerBackground;

}

class ThemeFactory {
  static ThemeCustom getThemeCustom({required String theme}) {
    return _getTheme(theme);
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
