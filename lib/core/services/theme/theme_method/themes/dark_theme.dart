import '../../../../core_export.dart';

class DarkTheme extends ThemeCustom {
  @override
  ThemeData get themeData => AppThemes.darkTheme;

  @override
  String get logo => AppImages.svg.logo2;

  @override
  Color get activeColor => AppColors.darkTheme.blue;

  @override
  Color get inActiveColor => AppColors.darkTheme.darkBlue;

  @override
  BottomBarThemeModel get bottomBar => BottomBarThemeModel(
        background: AppColors.darkTheme.darkBlue,
        activeColor: AppColors.gray,
        inActiveColor: AppColors.darkTheme.darkerBlue,
      );
  @override
  TextColorModel get textColor => TextColorModel(
        primary: AppColors.gray,
        secondary: AppColors.darkerGray,
      );
  @override
  Color get boxBorderColor => AppColors.darkGray;
  @override
  Color get containerBackground => AppColors.darkTheme.darkerBlue;
}
