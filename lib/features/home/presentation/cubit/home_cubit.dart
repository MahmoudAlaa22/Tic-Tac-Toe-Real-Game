import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  // todo(10): method called onPageLoad
  // this method will invoke the following [ getUserInfo, getUserGameHistory, getUserScoreboard, handleBottomBarNavigation(index: 0) ]
  // todo(11): method called getUserInfo
  // todo(12): method called getUserGameHistory
  // todo(13): method called getUserScoreboard
  // todo(14): method called handleBottomBarNavigation
  // todo(15): method called navigateToGameHistoryPage
  // todo(16): method called navigateToScoreboardPage
}
