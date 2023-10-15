import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'game_history_state.dart';

class GameHistoryCubit extends Cubit<GameHistoryState> {
  GameHistoryCubit() : super(HomeInitial());

  // todo(17): method called getGameHistory(date: now)
  // todo(18): method called openDatePicker
  // todo(19): method called onDateSelected
  /// when user select a date call getGameHistory(date: selected)
}
