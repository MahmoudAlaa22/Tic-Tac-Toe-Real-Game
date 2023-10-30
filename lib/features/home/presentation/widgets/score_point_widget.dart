import '/features/features_export.dart';

import '../../../../core/core_export.dart';

class ScorePointWidget extends StatelessWidget {
  const ScorePointWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.09.sh,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ScorePointItem(title: AppStrings.tr.wins),
          VerticalDivider(
            indent: 15.h,
            endIndent: 20.h,
          ),
          ScorePointItem(title: AppStrings.tr.losses),
          VerticalDivider(
            indent: 15.h,
            endIndent: 20.h,
          ),
          ScorePointItem(title: AppStrings.tr.draws),
        ],
      ),
    );
  }
}
