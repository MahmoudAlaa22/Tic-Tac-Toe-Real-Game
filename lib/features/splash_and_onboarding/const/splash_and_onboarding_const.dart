import '../../../core/core_export.dart';

class SplashAndOnboardingConst {
  static List<PageViewModel> onBoardingPages(
          {required PageDecoration decoration}) =>
      [
        PageViewModel(
          title: AppStrings.tr.welcome,
          body: AppStrings.tr.gameDescription,
          image: SvgPicture.asset(AppImages.svg.onboardingImage1),
          decoration: decoration,
        ),
        PageViewModel(
          title: AppStrings.tr.compete,
          body: AppStrings.tr.playWithFriends,
          image: SvgPicture.asset(AppImages.svg.onboardingImage2),
          decoration: decoration,
        ),
        PageViewModel(
          title: AppStrings.tr.scoreboard,
          body: AppStrings.tr.earnPoints,
          image: SvgPicture.asset(AppImages.svg.onboardingImage3),
          decoration: decoration,
        ),
      ];
}
