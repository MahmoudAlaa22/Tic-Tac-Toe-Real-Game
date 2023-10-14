import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'online_players_state.dart';

class OnlinePlayersCubit extends Cubit<OnlinePlayersState> {
  OnlinePlayersCubit() : super(OnlinePlayersInitial());
}
