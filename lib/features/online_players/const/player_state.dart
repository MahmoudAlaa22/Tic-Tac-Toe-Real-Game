import 'package:tic_tac_toe_real_game/core/core_export.dart';

enum PlayerState {
  online,
  offline,
  playing,
}

extension PlayerStateExtension on PlayerState {
  String get name => switch (this) {
        PlayerState.online => AppStrings.tr.online,
        PlayerState.offline => AppStrings.tr.offline,
        PlayerState.playing => AppStrings.tr.playing,
      };
  Color get color => switch (this) {
        PlayerState.online => AppColors.lightTheme.green,
        PlayerState.offline => AppColors.lightGray,
        PlayerState.playing => AppColors.lightTheme.red,
      };
}
