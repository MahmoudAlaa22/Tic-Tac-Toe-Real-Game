import '/core/core_export.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  // todo(10): method called onPageLoad
  // this method will invoke the following [ getUserInfo, getUserGameHistory, getUserScoreboard, handleBottomBarNavigation(index: 0) ]
  // todo(11): method called getUserInfo
  // todo(12): method called getUserGameHistory
  // todo(13): method called getUserScoreboard
  // todo(14): method called handleBottomBarNavigation
  // todo(15): method called navigateToGameHistoryPage
  // todo(16): method called navigateToScoreboardPage
}
