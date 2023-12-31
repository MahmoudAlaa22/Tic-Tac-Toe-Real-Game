import 'package:flutter/material.dart';

import '../../core_export.dart';

abstract class ThemeService {
  ThemeMode getCurrentThemeMode();
  ThemeMode changeTheme(AppThemeMode mode);
  Future<ThemeMode> loadSavedTheme();
}
