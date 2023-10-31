import '../../../core/core_export.dart';
import '../../features_export.dart';

class DashboardConst {
  static List<BottomBarItemModel> bottomBarItems = [
    BottomBarItemModel(
        id: 0, image: AppImages.svg.home, page: const HomePage()),
    BottomBarItemModel(id: 1, image: AppImages.svg.games, page: Container()),
    BottomBarItemModel(id: 2, image: AppImages.svg.friends, page: Container()),
  ];
}
