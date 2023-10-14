import 'package:flutter/material.dart';

import 'theme_export.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
      platform: TargetPlatform.iOS,
      primaryColor: AppColors.primary,
      primaryColorLight: AppColors.primary,
      primaryColorDark: AppColors.primary,
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: AppColors.primary,
          ),
      appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
          centerTitle: true,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: AppColors.primary,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: AppFonts.cairo,
          ),
          iconTheme: IconThemeData(
            color: AppColors.primary,
          ),
          actionsIconTheme: IconThemeData(
            color: AppColors.primary,
          )),
      scaffoldBackgroundColor: AppColors.background,
      splashColor: AppColors.primary.withOpacity(0.2),
      highlightColor: AppColors.primary.withOpacity(0.1),
      iconTheme: const IconThemeData(
        color: AppColors.primary,
      ),
      textTheme: const TextTheme(
        headlineMedium:
            TextStyle(color: AppColors.black, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(
          color: AppColors.black,
        ),
      ),
      primaryIconTheme: const IconThemeData(color: AppColors.primary),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(15),
          hintStyle: const TextStyle(color: AppColors.gray),
          labelStyle: const TextStyle(color: AppColors.darkBlue),
          errorStyle: const TextStyle(color: AppColors.error),
          prefixIconColor: AppColors.primary,
          suffixIconColor: AppColors.primary,
          fillColor: AppColors.white,
          filled: true,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.primary)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.primary)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.error)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.error)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.primary))),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              overlayColor: MaterialStatePropertyAll<Color>(
        AppColors.primary.withOpacity(0.1),
      ))),
      indicatorColor: AppColors.primary,
      dividerColor: AppColors.primary,
      dividerTheme:
          const DividerThemeData(color: AppColors.primary, thickness: 2),
      sliderTheme: SliderThemeData(
          thumbColor: AppColors.primary,
          activeTrackColor: AppColors.primary,
          inactiveTrackColor: AppColors.primary.withOpacity(0.2)),
      radioTheme: const RadioThemeData(
          fillColor: MaterialStatePropertyAll<Color>(
        AppColors.primary,
      )),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStatePropertyAll<Color>(
          AppColors.gray.withOpacity(0.5),
        ),
        checkColor: const MaterialStatePropertyAll<Color>(
          AppColors.primary,
        ),
      ),);

  // static ThemeData dark = ThemeData(
  //   platform: TargetPlatform.iOS,
  //   primaryColor: AppColors.primary,
  //   primaryColorLight: AppColors.primary,
  //   primaryColorDark: AppColors.primary,
  //   colorScheme: ThemeData().colorScheme.copyWith(
  //         secondary: AppColors.primary,
  //       ),
  //   appBarTheme: const AppBarTheme(
  //       backgroundColor: AppColors.darkBlack,
  //       centerTitle: true,
  //       titleTextStyle: TextStyle(
  //         color: AppColors.white,
  //         fontWeight: FontWeight.bold,
  //         fontSize: 20,
  //       ),
  //       iconTheme: IconThemeData(
  //         color: AppColors.primary,
  //       ),
  //       actionsIconTheme: IconThemeData(
  //         color: AppColors.primary,
  //       )),
  //   scaffoldBackgroundColor: AppColors.darkBackground,
  //   splashColor: AppColors.primary.withOpacity(0.2),
  //   highlightColor: AppColors.primary.withOpacity(0.1),
  //   iconTheme: const IconThemeData(
  //     color: AppColors.primary,
  //   ),
  //   textTheme: const TextTheme(
  //     headlineMedium:
  //         TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
  //     bodyMedium: TextStyle(
  //       color: AppColors.white,
  //     ),
  //   ),
  //   primaryIconTheme: const IconThemeData(color: AppColors.primary),
  //   inputDecorationTheme: InputDecorationTheme(
  //       contentPadding: const EdgeInsets.all(15),
  //       // hint style
  //       hintStyle: const TextStyle(color: AppColors.gray),
  //       // label style
  //       labelStyle: const TextStyle(color: AppColors.gray),
  //       // error style
  //       errorStyle: const TextStyle(color: AppColors.error),
  //       prefixIconColor: AppColors.primary,
  //       suffixIconColor: AppColors.primary,
  //       fillColor: AppColors.darkBlack,
  //       filled: true,
  //       border: InputBorder.none,
  //       focusedBorder:
  //           OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
  //       enabledBorder:
  //           OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
  //       errorBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(4),
  //           borderSide: const BorderSide(color: AppColors.error)),
  //       focusedErrorBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(4),
  //           borderSide: const BorderSide(color: AppColors.error))),
  //   textButtonTheme: TextButtonThemeData(
  //       style: ButtonStyle(
  //           overlayColor: MaterialStatePropertyAll<Color>(
  //     AppColors.primary.withOpacity(0.1),
  //   ))),
  //   indicatorColor: AppColors.primary,
  //   dividerColor: AppColors.primary,
  //   dividerTheme:
  //       const DividerThemeData(color: AppColors.primary, thickness: 2),
  //   sliderTheme: SliderThemeData(
  //       thumbColor: AppColors.primary,
  //       activeTrackColor: AppColors.primary,
  //       inactiveTrackColor: AppColors.primary.withOpacity(0.2)),
  //   radioTheme: const RadioThemeData(
  //       fillColor: MaterialStatePropertyAll<Color>(
  //     AppColors.primary,
  //   )),
  // );
}
