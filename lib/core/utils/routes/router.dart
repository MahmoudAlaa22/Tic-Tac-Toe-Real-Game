import 'package:flutter/cupertino.dart';

import '../../../features/features_export.dart';
import '../../core_export.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splashRoute:
      return PageTransition(
        child: const SplashPage(),
        type: PageTransitionType.fade,
      );
    case AppRoutes.onBoardingRoute:
      return CupertinoPageRoute(builder: (_) => const OnBoardingPage());
    case AppRoutes.loginPageRoute:
      return CupertinoPageRoute(builder: (_) => const LoginPage());
    default:
      return CupertinoPageRoute(builder: (_) => Container());
  }
}
