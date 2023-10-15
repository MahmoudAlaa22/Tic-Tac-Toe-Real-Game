import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'scoreboard_state.dart';

class ScoreboardCubit extends Cubit<ScoreboardState> {
  ScoreboardCubit() : super(HomeInitial());

  // todo(20): create method called getUserScoreboard(date: now)
  // todo(21): create method called openDatePicker
  // todo(22): create method called onDateSelected
  /// when user select a date call getUserScoreboard(date: selected)
}
