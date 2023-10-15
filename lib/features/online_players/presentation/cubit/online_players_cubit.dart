import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'online_players_state.dart';

class OnlinePlayersCubit extends Cubit<OnlinePlayersState> {
  OnlinePlayersCubit() : super(OnlinePlayersInitial());

  // todo(23): create method called getOnlineUsers(filter: null)
  /// should be called when page load with no filter criteria
  // todo(24): create method called onSearchForUser(userName: input)
  /// in this method call getOnlineUsers(filter: userName)
  // todo(25): create method called inviteUserToPlay(userId: id)
  // todo(27): create method called onUserAcceptInvitation
  /// when user accept invitation make delay for 1.5 seconds to show the current user the acceptance then navigate to play game to start play
  // todo(28): create method called onUserDeniedInvitation
  // todo(28): create method called onClickOnUser
  /// to show player info in a bottom-sheet
  // todo(29): create method called sendFriendRequest
}
