//! Based file path that has all images.
// ignore_for_file: library_private_types_in_public_api

const _filePath = "assets/images";

class AppImages {
  static _AppImagesPNG png = _AppImagesPNG();
  static _AppImagesGIF gif = _AppImagesGIF();
  static _AppImagesSVG svg = _AppImagesSVG();
  static _AppImagesJSON json = _AppImagesJSON();
  static _AppImagesJPG jpg = _AppImagesJPG();
}

class _AppImagesPNG {
  ///png file path that has image has type [PNG]
  static String _filePathPNG(v) => "$_filePath/png/$v.png";
  //? add file path like 👇
}

class _AppImagesGIF {
  ///gif file path that has image has type [GIF]
  static String _filePathGIF(v) => "$_filePath/gif/$v.gif";
}

class _AppImagesJSON {
  ///gif file path that has image has type [JSON]
  static String _filePathJSON(v) => "$_filePath/json/$v.json";
}

class _AppImagesSVG {
  ///svg file path that has image has type [SVG]
  static String _filePathSVG(v) => "$_filePath/svg/$v.svg";
  //? add file path like 👇
  final String logo1 = _filePathSVG("logo1");
  final String logo2 = _filePathSVG("logo2");
  final String onboardingImage1 = _filePathSVG("onboardingImage1");
  final String onboardingImage2 = _filePathSVG("onboardingImage2");
  final String onboardingImage3 = _filePathSVG("onboardingImage3");
  final String google = _filePathSVG("google");
  final String facebook = _filePathSVG("facebook");
  final String retry = _filePathSVG("retry");
}

class _AppImagesJPG {
  ///png file path that has image has type [PNG]
  static String _filePathJPG(v) => "$_filePath/jpg/$v.jpg";
  //? add file path like 👇
}
