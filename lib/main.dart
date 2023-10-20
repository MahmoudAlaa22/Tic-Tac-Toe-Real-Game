import 'dart:developer';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'core/core_export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServiceLocator();
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
          return MultiBlocProvider(
              providers: [
                BlocProvider(
                    create: (_) => serviceLocator<SettingCubit>()..excute()),
              ],
              child: BlocBuilder<SettingCubit, SettingState>(
                buildWhen: (previous, current) =>
                    current is ThemeLoadedState ||
                    current is LanguageLoadedState,
                builder: (context, state) {
                  final settingCubit = SettingCubit.get(context);
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    localizationsDelegates:
                        AppLocalizations.localizationsDelegates,
                    supportedLocales: AppLocalizations.supportedLocales,
                    // locale: _locale,
                    locale: const Locale('en'),
                    theme: settingCubit.themeCustom?.getThemeData(),
                    // darkTheme: darkTheme,
                    onGenerateRoute: onGenerate,
                    initialRoute: AppRoutes.splashRoute,
                  );
                },
              ));
        });
  }
}
