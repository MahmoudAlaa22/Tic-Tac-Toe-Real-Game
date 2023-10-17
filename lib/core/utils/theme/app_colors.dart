import 'package:flutter/material.dart';

class AppColors {
  static const white = Color(0xffFFFFFF);
  static const lighterGray = Color(0xffF1F1F1);
  static const lightGray = Color(0xffE3E3E3);
  static const gray = Color(0xffADADAD);
  static const darkGray = Color(0xff808080);
  static const darkerGray = Color(0xff575757);
  static const darkestGray = Color(0xff282828);
  static const black = Color(0xff000000);
  static _LightTheme lightTheme = _LightTheme();
  static _DarkTheme darkTheme = _DarkTheme();
}

class _LightTheme {
  final blue = const Color(0xff46A3FF);
  final green = const Color(0xff00C096);
  final red = const Color(0xffFF827E);
  final yellow = const Color(0xffFFB048);
}

class _DarkTheme {
  final blue = const Color(0xff2475C5);
  final green = const Color(0xff00A682);
  final red = const Color(0xffE45651);
  final darkBlue = const Color(0xff212835);
  final darkerBlue = const Color(0xff12161F);
  final dark = const Color(0xff0C1017);
}
