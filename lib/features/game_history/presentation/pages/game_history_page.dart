import 'package:tic_tac_toe_real_game/features/features_export.dart';

import '/core/core_export.dart';

class GameHistoryPage extends StatelessWidget {
  const GameHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.tr.gameHistory),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p25.w),
        child: Column(
          children: [
            const ChooseDateWidget(),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GameHistorItem(
                      title: 'Mahmoud', subTitle: '05.25.2022', gameState: AppStrings.tr.won);
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: AppPadding.p5.h,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
