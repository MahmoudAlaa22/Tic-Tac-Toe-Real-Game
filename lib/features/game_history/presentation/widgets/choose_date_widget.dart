import 'package:tic_tac_toe_real_game/core/core_export.dart';

class ChooseDateWidget extends StatelessWidget {
  const ChooseDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeCubit.get(context);
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: AppPadding.p15.h),
      child: Container(
        padding: EdgeInsets.all(AppPadding.p15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.r4),
          border: Border.all(
            color: theme.themeCustom!.themeData.inputDecorationTheme
                .enabledBorder!.borderSide.color,
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.calendar_month_sharp,
              color: theme.themeCustom!.textColor.secondary,
            ),
            SizedBox(width: AppPadding.p10.w),
            Text(
              AppStrings.tr.pickDate,
              style: theme.themeCustom!.themeData.textTheme.bodyLarge!.copyWith(
                color: theme.themeCustom!.textColor.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
