// import '../../core_export.dart';

// class ThemeServiceImpl implements ThemeService {
//   ThemeMode _currentThemeMode = ThemeMode.dark;
//   // for first time launch default theme will be dark theme

//   @override
//   ThemeMode changeTheme(AppThemeMode mode) {
//     switch (mode) {
//       case AppThemeMode.LIGHT:
//         _currentThemeMode = ThemeMode.light;
//         break;
//       case AppThemeMode.DARK:
//         _currentThemeMode = ThemeMode.dark;
//         break;
//       case AppThemeMode.SYSTEM:
//         _currentThemeMode = ThemeMode.system;
//         break;
//     }

//     _saveTheme(mode);
//     return _currentThemeMode;
//   }

//   void _saveTheme(AppThemeMode mode) {
//     var storageController = serviceLocator<AppPreferences>();
//     switch (mode) {
//       case AppThemeMode.LIGHT:
//         storageController.setTheme(theme: AppThemeMode.LIGHT.name);
//         break;
//       case AppThemeMode.DARK:
//         storageController.setTheme(theme: AppThemeMode.DARK.name);
//         break;
//       case AppThemeMode.SYSTEM:
//         storageController.setTheme(theme: AppThemeMode.SYSTEM.name);
//         break;
//     }
//   }

//   @override
//   Future<ThemeMode> loadSavedTheme() async {
//     String? themeName = await serviceLocator<AppPreferences>().getTheme();
//     return _getTheme(themeName);
//   }

//   ThemeMode _getTheme(String? themeName) {
//     switch (themeName) {
//       case 'LIGHT':
//         _currentThemeMode = ThemeMode.light;
//         return _currentThemeMode;
//       case 'DARK':
//         _currentThemeMode = ThemeMode.dark;
//         return _currentThemeMode;
//       case 'SYSTEM':
//         _currentThemeMode = ThemeMode.system;
//         return _currentThemeMode;
//       default:
//         return _currentThemeMode;
//     }
//   }

//   @override
//   ThemeMode getCurrentThemeMode() {
//     return _currentThemeMode;
//   }
  
//   @override
//   String getLogoTheme() {
//     switch (_currentThemeMode) {
//       case ThemeMode.light:
//         return AppImages.svg.logo1;
//       case ThemeMode.dark:
//         return AppImages.svg.logo2;
//       case ThemeMode.system:
//         return AppImages.svg.logo2;
//     }
//   }
// }
