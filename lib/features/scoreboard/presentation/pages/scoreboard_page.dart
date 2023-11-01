import 'package:tic_tac_toe_real_game/features/features_export.dart';
import 'package:tic_tac_toe_real_game/widgets/app_text_field.dart';

import '../../../../core/core_export.dart';

class ScoreboardPage extends StatelessWidget {
  const ScoreboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.tr.scoreboard),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p25.w),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(vertical: AppPadding.p15.h),
              child: AppTextField(
                title: AppStrings.tr.searchPlayers,
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ScoreboardItem(
                    title: 'Mahmoud',
                    score: '140',
                  );
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
