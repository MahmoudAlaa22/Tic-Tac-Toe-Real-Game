import 'dart:developer';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'core/core_export.dart';
import 'features/features_export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServiceLocator();
  final theme = await serviceLocator<AppPreferences>().getTheme();

  runApp(MyApp(
    theme: theme,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.theme});
  final String theme;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360,690),
        builder: (context, child) {
          return MultiBlocProvider(
              providers: [
                BlocProvider(
                    create: (_) =>
                        serviceLocator<ThemeCubit>()..excute(theme: theme)),
                BlocProvider(
                    create: (_) => serviceLocator<SplashAndOnboardingCubit>()),
                BlocProvider(
                    create: (_) => serviceLocator<LoginCubit>()),
              ],
              child: BlocBuilder<ThemeCubit, ThemeState>(
                buildWhen: (previous, current) =>
                    current is ThemeLoadedState ||
                    current is LanguageLoadedState,
                builder: (context, state) {
                  final settingCubit = ThemeCubit.get(context);
                  log('theme is ${settingCubit.themeCustom}');
                  return MaterialApp(
                      debugShowCheckedModeBanner: false,
                      localizationsDelegates:
                          AppLocalizations.localizationsDelegates,
                      supportedLocales: AppLocalizations.supportedLocales,
                      // locale: _locale,
                      locale: const Locale('en'),
                      theme: settingCubit.themeCustom?.themeData,
                      darkTheme: settingCubit.themeCustom?.themeData,
                      onGenerateRoute: onGenerate,
                      initialRoute: AppRoutes.splashRoute,
                    );
                },
              ));
        });
  }
}
