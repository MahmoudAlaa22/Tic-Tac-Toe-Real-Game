import '../../core_export.dart';

extension ThemeExtension on AppThemeMode {
  String get name {
    switch (this) {
      case AppThemeMode.LIGHT:
        return 'LIGHT';
      case AppThemeMode.DARK:
        return 'DARK';
      default:
        return 'LIGHT';
    }
  }
}
