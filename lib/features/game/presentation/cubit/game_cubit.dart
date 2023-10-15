import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(HomeInitial());

  // todo(37): create method called initPlayRoom(myId, playerId)
  /// should be called when page load
  // todo(38): create method called chooseXOrO
  // todo(39): create method called startPlay or startSession
  // todo(40): create method called handlePlayLogic
  // todo(41): create method called onWin
  // todo(42): create method called onLose
  // todo(43): create method called playAgain
  // todo(44): create method called sendFriendRequest
  // todo(45): create method called onLeaveRoom
  // todo(46): create method called closeSession
}
