import 'package:tic_tac_toe_real_game/features/features_export.dart';
import 'package:tic_tac_toe_real_game/widgets/app_text_field.dart';

import '../../../../core/core_export.dart';

class OnlinePlayersPage extends StatelessWidget {
  const OnlinePlayersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBar(
          centerTitle: false,
          title: Text(
            AppStrings.tr.onlinePlayers,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: AppPadding.p15.h),
          child: AppTextField(
            title: AppStrings.tr.searchPlayers,
            prefixIcon: const Icon(Icons.search),
          ),
        ),
        const ListOfOlinePlayersWidget()
      ],
    );
  }
}
