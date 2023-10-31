import '../../../../core/core_export.dart';
import '../../../features_export.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<DashboardCubit>(
        create: (context) => serviceLocator<DashboardCubit>(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p25.w),
          child: SizedBox(
            width: 1.sw,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                BlocBuilder<DashboardCubit, DashboardState>(
                    buildWhen: (previous, current) =>
                        current is DashboardBottomBarIndexState,
                    builder: (context, state) {
                      final dashboardCubit = DashboardCubit.get(context);
                      return _buildPageOfBottomBar(
                          dashboardCubit.bottomBarItem);
                    }),
                Padding(
                  padding: EdgeInsets.only(bottom: AppPadding.p25.h),
                  child: const BottomBarWidget(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildPageOfBottomBar(BottomBarItemModel item) {
    return item.page;
  }
}
