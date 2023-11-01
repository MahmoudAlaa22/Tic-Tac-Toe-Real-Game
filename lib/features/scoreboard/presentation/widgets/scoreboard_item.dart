import '../../../../core/core_export.dart';

class ScoreboardItem extends StatelessWidget {
  const ScoreboardItem({
    super.key,
    required this.title,
    required this.score,
  });
  final String title;
  final String score;
  @override
  Widget build(BuildContext context) {
    final theme = ThemeCubit.get(context).themeCustom!;

    return SizedBox(
      height: 0.05.sh,
      child: ListTile(
        title: Row(
          children: [
            Icon(
              Icons.star,
              color: AppColors.lightTheme.yellow,
              size: 20,
            ),
            SizedBox(
              width: 0.02.sw,
            ),
            Text(
              title,
              style: theme.themeData.textTheme.bodyLarge!.copyWith(
                color: theme.textColor.primary,
              ),
            ),
          ],
        ),
        trailing: Text(
          score,
          style: theme.themeData.textTheme.bodyMedium!.copyWith(
            color: AppColors.lightTheme.yellow,
          ),
        ),
      ),
    );
  }
}
