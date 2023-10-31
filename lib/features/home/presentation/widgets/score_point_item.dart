import '../../../../core/core_export.dart';

class ScorePointItem extends StatelessWidget {
  const ScorePointItem({super.key, required this.title,  this.value=0});
final String title;
final int value;
  @override
  Widget build(BuildContext context) {
    final theme = ThemeCubit.get(context).themeCustom!;
    return Column(
      children: [
        Text(
          '$value',
          style: theme.themeData.textTheme.displayLarge!.copyWith(
            color: theme.textColor.primary,
            
          ),
        ),
        Text(
          title,
          style: theme.themeData.textTheme.bodyLarge!.copyWith(
            color: theme.textColor.secondary,
            height: 0.5.h,
          ),
        ),
      ],
    );
  }
}
