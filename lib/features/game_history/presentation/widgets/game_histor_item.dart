import '../../../../core/core_export.dart';

class GameHistorItem extends StatelessWidget {
  const GameHistorItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.gameState,
  });
  final String title;
  final String subTitle;
  final String gameState;
  @override
  Widget build(BuildContext context) {
    final theme = ThemeCubit.get(context).themeCustom!;

    return SizedBox(
      height: 0.06.sh,
      child: ListTile(
        title: Text(
          title,
          style: theme.themeData.textTheme.bodyLarge!.copyWith(
            color: theme.textColor.primary,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: theme.themeData.textTheme.bodySmall!.copyWith(
            color: theme.textColor.secondary,
            height: 0.5.h,
          ),
        ),
        trailing: Text(
          gameState,
          style: theme.themeData.textTheme.bodyMedium!.copyWith(
            color: AppColors.lightTheme.green,
          ),
        ),
      ),
    );
  }
}
