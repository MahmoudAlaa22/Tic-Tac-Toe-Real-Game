import '../../../../core/core_export.dart';
import '../../../features_export.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeCubit.get(context).themeCustom;

    return Column(
      children: [
        SizedBox(
          height: 0.05.sh,
        ),
        Text(
          AppStrings.tr.welcome,
          style: theme!.themeData.textTheme.headlineLarge!.copyWith(
            color: theme.textColor.primary,
          ),
        ),
        Text(
          'Mahmoud',
          style: theme.themeData.textTheme.displayLarge!.copyWith(
            color: theme.textColor.primary,
          ),
        ),
        const ScorePointWidget(),
        SizedBox(
          height: 0.03.sh,
        ),
        GameSummaryCard(
          title: AppStrings.tr.gameHistory,
          items: [
            GameHistorItem(
                title: 'Mahmoud',
                subTitle: '05.25.2022.',
                gameState: AppStrings.tr.won),
          ],
          emptyMessage: AppStrings.tr.playGamePrompt,
          onPressed: () =>
              Navigator.pushNamed(context, AppRoutes.gameHistoryPageRoute),
        ),
        SizedBox(
          height: 0.02.sh,
        ),
        GameSummaryCard(
          title: AppStrings.tr.scoreboard,
          items: [
            SizedBox(
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
                      '1. Mahmoud',
                      style: theme.themeData.textTheme.bodyLarge!.copyWith(
                        color: theme.textColor.primary,
                      ),
                    ),
                  ],
                ),
                trailing: Text(
                  '160',
                  style: theme.themeData.textTheme.bodyMedium!.copyWith(
                    color: AppColors.lightTheme.yellow,
                  ),
                ),
              ),
            ),
          ],
          emptyMessage: AppStrings.tr.startPlayingPrompt,
          onPressed: (){},
        ),
      ],
    );
  }
}
