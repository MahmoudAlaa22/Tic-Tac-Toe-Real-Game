import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'friends_state.dart';

class FriendsCubit extends Cubit<FriendsState> {
  FriendsCubit() : super(HomeInitial());

  // todo(30): create method called getMyFriends(filter: null)
  /// should be called when page load with no filter criteria
  // todo(31): create method called onSearchForUser(userName: input)
  /// in this method call getMyFriends(filter: userName)
  // todo(32): create method called inviteUserToPlay(userId: id)
  // todo(33): create method called onUserAcceptInvitation
  /// when user accept invitation make delay for 1.5 seconds to show the current user the acceptance then navigate to play game to start play
  // todo(34): create method called onUserDeniedInvitation
  // todo(35): create method called onClickOnUser
  /// to show player info in a bottom-sheet
  // todo(36): create method called removeUserFromMyFriends
  /// should show a dialog to warning the user about that action if confirm -> proceed else -> cancel
}
