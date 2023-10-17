import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'core/core_export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return AdaptiveTheme(
            initial: AdaptiveThemeMode.light,
            light: AppThemes.lightTheme,
            dark: AppThemes.darkTheme,
            builder: (theme, darkTheme) => MaterialApp(
              // showPerformanceOverlay: true,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              // locale: _locale,
              locale: const Locale('ar'),
              theme: AppThemes.lightTheme,
              darkTheme: AppThemes.darkTheme,
              home: const Scaffold(),
              // onGenerateRoute: onGenerate,
              // initialRoute: AppRoutes.splashRoute,
            ),
          );
        });
  }
}
