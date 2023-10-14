part of 'theme_cubit.dart';

abstract class SettingState extends Equatable {
  const SettingState();

  @override
  List<Object> get props => [];
}

class ThemeInitial extends SettingState {}
class ThemeLoadingState extends SettingState {}
class ThemeLoadedState extends SettingState {}
class LanguageLoadingState extends SettingState {}
class LanguageLoadedState extends SettingState {}
