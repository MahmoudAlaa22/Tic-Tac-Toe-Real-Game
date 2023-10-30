import 'package:tic_tac_toe_real_game/features/features_export.dart';

import '/core/core_export.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitial());
  static DashboardCubit get(context) => BlocProvider.of(context);
  BottomBarItemModel bottomBarItem = DashboardConst.bottomBarItems.first;
  void changeBottomBarIndex(BottomBarItemModel item) {
    bottomBarItem = item;
    emit(DashboardBottomBarIndexState());
  }
}
