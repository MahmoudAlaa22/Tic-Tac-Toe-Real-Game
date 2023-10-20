import 'package:flutter/cupertino.dart';

import '../../../features/features_export.dart';
import '../../core_export.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splashRoute:
      return CupertinoPageRoute(builder: (_) => const SplashPage());
    default:
      return CupertinoPageRoute(builder: (_) => Container());
  }
}
