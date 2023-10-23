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
  BottomBarModel get bottomBar => BottomBarModel(
        background: AppColors.darkTheme.darkBlue,
        activeColor: AppColors.gray,
        inActiveColor: AppColors.darkTheme.darkerBlue,
      );
  @override
  TextColorModel get textColor => TextColorModel(
        primary: AppColors.gray,
        secondary: AppColors.darkerGray,
      );
}
