import '../../../../core/core_export.dart';

class GameSummaryCard extends StatelessWidget {
  const GameSummaryCard(
      {super.key,
      required this.title,
      required this.items,
      required this.emptyMessage});
  final String title;
  final String emptyMessage;
  final List<Widget> items;
  @override
  Widget build(BuildContext context) {
    final theme = ThemeCubit.get(context).themeCustom!;
    return SizedBox(
        width: 1.sw,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: theme.themeData.textTheme.headlineLarge!.copyWith(
                color: theme.textColor.primary,
              ),
            ),
            SizedBox(
              height: 0.01.sh,
            ),
            Container(
              height: 0.2.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppRadius.r4),
                color: theme.containerBackground,
              ),
              child: (items.isEmpty)
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(AppStrings.tr.empty,
                            style:
                                theme.themeData.textTheme.titleLarge!.copyWith(
                              color: theme.textColor.primary,
                            )),
                        Text(emptyMessage,
                            style:
                                theme.themeData.textTheme.bodyLarge!.copyWith(
                              color: theme.textColor.secondary,
                            )),
                      ],
                    )
                  : Column(
                      children: List.generate(
                          items.length > 3 ? 3 : items.length,
                          (index) => items[index]).toList()),
            )
          ],
        ));
  }
}
