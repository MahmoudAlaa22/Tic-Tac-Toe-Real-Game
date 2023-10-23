import 'dart:developer';

import '../../../core_export.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  static ThemeCubit get(BuildContext context) => BlocProvider.of(context);
  String? language;
  ThemeCustom? themeCustom;

  Future<void> excute({required String theme}) async {
    await getTheme(theme: theme);
    await getLanguage();
  }

  Future<void> getTheme({required String theme}) async {
    log('theme is $theme');
    if (theme.isNullOrEmpty) {
      theme = AppThemeMode.LIGHT.name;
      serviceLocator<AppPreferences>().setTheme(theme: theme);
    }
    themeCustom = ThemeFactory.getThemeCustom(theme: theme);
    emit(ThemeLoadedState());
  }

  Future<void> getLanguage() async {
    language = await serviceLocator<AppPreferences>().getAppLanguage();
    emit(LanguageLoadedState());
  }
}
