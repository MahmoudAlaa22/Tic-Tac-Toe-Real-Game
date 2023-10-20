import 'dart:developer';

import '../../../core_export.dart';

part 'theme_state.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit() : super(ThemeInitial());
  static SettingCubit get(BuildContext context) => BlocProvider.of(context);
  String? language;
  ThemeCustom? themeCustom;

  Future<void> excute() async {
    await getTheme();
    await getLanguage();
  }

  Future<void> getTheme() async {
    final theme = await serviceLocator<AppPreferences>().getTheme();
    themeCustom = ThemeFactory.getThemeCustom(theme: AppThemeMode.DARK.name);
    emit(ThemeLoadedState());
  }

  Future<void> getLanguage() async {
    language = await serviceLocator<AppPreferences>().getAppLanguage();
    emit(LanguageLoadedState());
  }

}
