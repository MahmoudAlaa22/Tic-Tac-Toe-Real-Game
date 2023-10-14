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
  String tLogoProfile = _filePathPNG('t_logo_profile');
}

class _AppImagesGIF {
  ///gif file path that has image has type [GIF]
  static String _filePathGIF(v) => "$_filePath/gif/$v.gif";
  // String splash = _filePathGIF('splash');
}

class _AppImagesJSON {
  ///gif file path that has image has type [JSON]
  static String _filePathJSON(v) => "$_filePath/json/$v.json";
  // String login = _filePathJSON('login');
}

class _AppImagesSVG {
  ///svg file path that has image has type [SVG]
  // static const _filePathSVG = "$_filePath/svg";
  static String _filePathSVG(v) => "$_filePath/svg/$v.svg";

  //? add file path like 👇
  String travelLogo = _filePathSVG('travel_logo');
  String travelGrayLogo = _filePathSVG('travel_gray_logo');
  String drawerItem = _filePathSVG('drawer_item');
  String trackingCar = _filePathSVG('tracking_car');
  String travelWhiteLogo = _filePathSVG('travel_white_logo');
  // String tLogoProfile = _filePathSVG('t_logo_profile');
  String home = _filePathSVG('home');
  String management = _filePathSVG('management');
  String inquireAboutTheCar = _filePathSVG('inquireAboutTheCar');
  String vehicleTransfer = _filePathSVG('sendCar');
  String reservations = _filePathSVG('reservations');
  String closeContract = _filePathSVG('closeTheContract');
  String extendContract = _filePathSVG('extendContract');
  String contractManagement = _filePathSVG('contractManagement');
  String closedContracts = _filePathSVG('closedContracts');
  String openContracts = _filePathSVG('openContracts');
  String signingContract = _filePathSVG('signingContract');
  String logout = _filePathSVG('logout');
  String car = _filePathSVG('car');
  String bgSplash = _filePathSVG('bgSplash');
  String branch = _filePathSVG('branch');
  String renterData = _filePathSVG('renterData');
  String carPlateNum = _filePathSVG('carPlateNum');
  String cost = _filePathSVG('cost');
  String bgHome = _filePathSVG('bgHome');
  String travelFull = _filePathSVG('travel_full');
  String radiusCar = _filePathSVG('radius_car');
  String theRemainingTimeToAchieveTheSulfate =
      _filePathSVG('the_remaining_time_to_achieve_the_sulfate');
  String theAmountAchievedSoFar = _filePathSVG('the_amount_achieved_so_far');
  String targitRequiredFromTheBranch =
      _filePathSVG('targit_required_from_the_branch');
  String transferRequests = _filePathSVG('transfer_requests');
  String rentalCard = _filePathSVG('rental_card');
  String tSilver = _filePathSVG('t_silver');
  String t1 = _filePathSVG('t_1');
  String t2 = _filePathSVG('t_2');
  String whatsAppLogo = _filePathSVG('whats_app_logo');
  String mapLoacation = _filePathSVG('map-loacation');
  String squarePlus = _filePathSVG('square-plus');
  String carDelivery = _filePathSVG('car_delivery');
}

class _AppImagesJPG {
  ///png file path that has image has type [PNG]
  // static const _filePathPNG = "$_filePath/png";
  static String _filePathJPG(v) => "$_filePath/jpg/$v.jpg";

  //? add file path like 👇
  // String carCheck1 = _filePathJPG('car_check1');
}
