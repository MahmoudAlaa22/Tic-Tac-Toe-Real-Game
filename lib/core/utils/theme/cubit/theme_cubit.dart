
import 'dart:developer';

import '../../../core_export.dart';

part 'theme_state.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit() : super(ThemeInitial());
  static SettingCubit get(BuildContext context) => BlocProvider.of(context);
  bool isDark = false;
  String? language;

  Future<void> getTheme() async {
    emit(ThemeLoadingState());
    final theme = await AdaptiveTheme.getThemeMode();
    log('########## theme ---------------> $theme');
    if (theme != null) isDark = theme.isDark;
    log('########## isDark ---------------> $isDark');
    emit(ThemeLoadedState());
  }

  Future<void> onToggleChange(BuildContext context) async {
    if (isDark)
      AdaptiveTheme.of(context).setLight();
    else
      AdaptiveTheme.of(context).setDark();
    await getTheme();
  }

  Future<void> getLanguage() async {
    emit(LanguageLoadingState());
    language = await serviceLocator<AppPreferences>().getAppLanguage();
    emit(LanguageLoadedState());
  }

  bool isEnglish() => language == 'en';
}
