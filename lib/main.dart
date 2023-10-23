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
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
              providers: [
                BlocProvider(
                    create: (_) =>
                        serviceLocator<ThemeCubit>()..excute(theme: theme)),
                BlocProvider(
                    create: (_) => serviceLocator<SplashAndOnboardingCubit>()),
              ],
              child: BlocBuilder<ThemeCubit, ThemeState>(
                buildWhen: (previous, current) =>
                    current is ThemeLoadedState ||
                    current is LanguageLoadedState,
                builder: (context, state) {
                  final settingCubit = ThemeCubit.get(context);
                  return AdaptiveTheme(
                    light: settingCubit.themeCustom?.themeData ??
                        AppThemes.lightTheme,
                    dark: settingCubit.themeCustom?.themeData ??
                        AppThemes.darkTheme,
                    initial: AdaptiveThemeMode.light,
                    builder: (theme, darkTheme) => MaterialApp(
                      debugShowCheckedModeBanner: false,
                      localizationsDelegates:
                          AppLocalizations.localizationsDelegates,
                      supportedLocales: AppLocalizations.supportedLocales,
                      // locale: _locale,
                      locale: const Locale('en'),
                      theme: theme,
                      darkTheme: darkTheme,
                      onGenerateRoute: onGenerate,
                      initialRoute: AppRoutes.splashRoute,
                    ),
                  );
                },
              ));
        });
  }
}
