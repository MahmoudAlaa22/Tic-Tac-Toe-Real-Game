import '/core/core_export.dart';

class LightTheme extends ThemeCustom {
  @override
  ThemeData get themeData => AppThemes.lightTheme;

  @override
  String get logo => AppImages.svg.logo1;

  @override
  Color get activeColor => AppColors.lightTheme.blue;

  @override
  // TODO: implement inActiveColor
  Color get inActiveColor => AppColors.lightGray;

  @override
  BottomBarModel get bottomBar => BottomBarModel(
        background: AppColors.lightTheme.blue,
        activeColor: AppColors.white,
        inActiveColor: AppColors.darkTheme.blue,
      );
  @override
  TextColorModel get textColor => TextColorModel(
        primary: AppColors.black,
        secondary: AppColors.gray,
      );

  @override
  Color get boxBorderColor => AppColors.lightGray;
}
