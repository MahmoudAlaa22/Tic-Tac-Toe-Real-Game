import 'package:tic_tac_toe_real_game/features/features_export.dart';

import '/core/core_export.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeCubit.get(context).themeCustom!;

    return BlocBuilder<DashboardCubit, DashboardState>(
      buildWhen: (previous, current) =>
          current is DashboardBottomBarIndexState,
      builder: (context, state) {
        final dashboardCubit = DashboardCubit.get(context);
        final bottomBarIndex = dashboardCubit.bottomBarItem.id;
        return Container(
          padding: EdgeInsets.symmetric(
              horizontal: AppPadding.p15.w, vertical: AppPadding.p5.h),
          decoration: BoxDecoration(
            color: theme.bottomBar.background,
            borderRadius: BorderRadius.circular(AppRadius.r12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: DashboardConst.bottomBarItems
                .map((e) => IconButton(
                    onPressed: () => dashboardCubit.changeBottomBarIndex(e),
                    icon: SvgPicture.asset(e.image,
                        colorFilter: ColorFilter.mode(
                            bottomBarIndex == e.id
                                ? theme.bottomBar.activeColor!
                                : theme.bottomBar.inActiveColor!,
                            BlendMode.srcIn))))
                .toList(),
          ),
        );
      },
    );
  }
}
