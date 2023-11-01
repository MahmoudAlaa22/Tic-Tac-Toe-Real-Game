import 'package:flutter/material.dart';

import 'theme_export.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    platform: TargetPlatform.iOS,
    primaryColor: AppColors.white,
    primaryColorLight: AppColors.white,
    colorScheme: ThemeData().colorScheme.copyWith(
          secondary: AppColors.white,
        ),
    appBarTheme: AppBarTheme(
        titleTextStyle: AppTextStyles.header2.copyWith(color: AppColors.black),
        iconTheme: const IconThemeData(color: AppColors.black),
        elevation: 0,
        backgroundColor: AppColors.white),
    scaffoldBackgroundColor: AppColors.white,
    iconTheme: const IconThemeData(
      color: AppColors.white,
    ),
    primaryIconTheme: const IconThemeData(color: AppColors.white),
    textTheme: TextTheme(
      displayLarge: AppTextStyles.header1,
      displaySmall: AppTextStyles.header2,
      headlineLarge: AppTextStyles.subtitle1,
      headlineMedium: AppTextStyles.subtitle1M,
      titleLarge: AppTextStyles.subtitle2,
      titleMedium: AppTextStyles.subtitle2M,
      bodyLarge: AppTextStyles.body1.copyWith(color: AppColors.gray),
      bodyMedium: AppTextStyles.body1M.copyWith(color: AppColors.gray),
      bodySmall: AppTextStyles.body2.copyWith(color: AppColors.gray),
    ),
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(AppPadding.p15),
        hintStyle: AppTextStyles.body1.copyWith(color: AppColors.gray),
        labelStyle: AppTextStyles.body1.copyWith(color: AppColors.gray),
        errorStyle: TextStyle(color: AppColors.lightTheme.red),
        prefixIconColor: AppColors.gray,
        suffixIconColor: AppColors.gray,
        fillColor: AppColors.white,
        filled: true,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.r4),
            borderSide: const BorderSide(color: AppColors.lightGray)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.r4),
            borderSide: BorderSide(color: AppColors.lightTheme.blue)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.r4),
            borderSide: BorderSide(color: AppColors.lightTheme.red)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.r4),
            borderSide: BorderSide(color: AppColors.lightTheme.red)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.r4),
            borderSide: const BorderSide(color: AppColors.lightGray))),
    dividerColor: AppColors.lightTheme.blue,
    dividerTheme:
        const DividerThemeData(color: AppColors.lightGray, thickness: 1),
    radioTheme: RadioThemeData(
        fillColor: MaterialStatePropertyAll<Color>(
      AppColors.lightTheme.blue,
    )),
    progressIndicatorTheme: ProgressIndicatorThemeData(
        color: AppColors.lightTheme.blue,
        linearTrackColor: AppColors.lighterGray),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    platform: TargetPlatform.iOS,
    primaryColor: AppColors.darkTheme.dark,
    primaryColorLight: AppColors.darkTheme.dark,
    colorScheme: ThemeData().colorScheme.copyWith(
          secondary: AppColors.darkTheme.dark,
        ),
    scaffoldBackgroundColor: AppColors.darkTheme.dark,
    iconTheme: IconThemeData(
      color: AppColors.darkTheme.dark,
    ),
    appBarTheme: AppBarTheme(
        titleTextStyle: AppTextStyles.header2.copyWith(color: AppColors.gray),
        iconTheme: const IconThemeData(color: AppColors.gray),
        elevation: 0,
        backgroundColor: AppColors.darkTheme.dark),
    textTheme: TextTheme(
      displayLarge: AppTextStyles.header1.copyWith(color: AppColors.gray),
      displaySmall: AppTextStyles.header2.copyWith(color: AppColors.gray),
      headlineLarge: AppTextStyles.subtitle1.copyWith(color: AppColors.gray),
      headlineMedium: AppTextStyles.subtitle1M.copyWith(color: AppColors.gray),
      titleLarge: AppTextStyles.subtitle2.copyWith(color: AppColors.gray),
      titleMedium: AppTextStyles.subtitle2M.copyWith(color: AppColors.gray),
      bodyLarge: AppTextStyles.body1.copyWith(color: AppColors.gray),
      bodyMedium: AppTextStyles.body1M.copyWith(color: AppColors.gray),
      bodySmall: AppTextStyles.body2.copyWith(color: AppColors.darkerGray),
    ),
    primaryIconTheme: IconThemeData(color: AppColors.darkTheme.dark),
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(AppPadding.p15),
        hintStyle: AppTextStyles.body1.copyWith(color: AppColors.darkerGray),
        labelStyle: AppTextStyles.body1.copyWith(color: AppColors.darkerGray),
        errorStyle: TextStyle(color: AppColors.lightTheme.red),
        prefixIconColor: AppColors.darkerGray,
        suffixIconColor: AppColors.darkerGray,
        fillColor: AppColors.darkTheme.dark,
        filled: true,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.r4),
            borderSide: BorderSide(color: AppColors.darkTheme.darkBlue)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.r4),
            borderSide: BorderSide(color: AppColors.lightTheme.blue)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.r4),
            borderSide: BorderSide(color: AppColors.lightTheme.red)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.r4),
            borderSide: BorderSide(color: AppColors.lightTheme.red)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.r4),
            borderSide: const BorderSide(color: AppColors.darkerGray))),
    dividerColor: AppColors.darkTheme.blue,
    dividerTheme:
        DividerThemeData(color: AppColors.darkTheme.darkBlue, thickness: 1),
    radioTheme: RadioThemeData(
        fillColor: MaterialStatePropertyAll<Color>(
      AppColors.darkTheme.blue,
    )),
    progressIndicatorTheme: ProgressIndicatorThemeData(
        color: AppColors.darkTheme.blue,
        linearTrackColor: AppColors.darkTheme.darkBlue),
  );
}
