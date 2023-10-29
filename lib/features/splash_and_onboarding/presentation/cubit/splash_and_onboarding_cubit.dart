// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import '../../../../core/core_export.dart';

part 'splash_and_onboarding_state.dart';

class SplashAndOnboardingCubit extends Cubit<SplashAndOnboardingState> {
  SplashAndOnboardingCubit() : super(SplashAndOnboardingInitial());
  static SplashAndOnboardingCubit get(context) => BlocProvider.of(context);

  final introKey = GlobalKey<IntroductionScreenState>();

  // todo(1): create a method called startSplashTime to handle splash time
  /// the splash delay duration is minimum 3 seconds not less
  /// after splash time finished call todo(2)
  Future<void> startSplashTime(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    await handleNavigationToNextPage(context);
  }

  /// todo(2): create method called handleNavigationToNextPage to handle navigation to the next page
  /// check if is first time launch (navigate to onBoarding page else if the user has saved data locally go to preparing page else go to login page)
  Future<void> handleNavigationToNextPage(BuildContext context) async {
    final isOnBoardingScreenViewed =
        await serviceLocator<AppPreferences>().isOnBoardingScreenViewed();
    if (isOnBoardingScreenViewed) {
      // Navigator.pushReplacementNamed(context, AppRoutes.loginPageRoute);
      Navigator.pushReplacementNamed(context, AppRoutes.preparingpageRoute);
    } else {
      await serviceLocator<AppPreferences>().setOnBoardingScreenViewed();
      Navigator.pushReplacementNamed(context, AppRoutes.onBoardingRoute);
    }
  }

  /// todo(2.1): create method called handleOnBoardingDone to handle onBoarding done
  /// save data locally and navigate to preparing page
  Future<void> handleOnBoardingDone(BuildContext context) async {
    Navigator.pushReplacementNamed(context, AppRoutes.loginPageRoute);
    await serviceLocator<AppPreferences>().setOnBoardingScreenViewed();
  }
}
