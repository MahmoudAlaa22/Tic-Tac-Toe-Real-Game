import 'package:flutter/material.dart';
import 'package:tic_tac_toe_real_game/features/features_export.dart';

class ListOfOlinePlayersWidget extends StatelessWidget {
  const ListOfOlinePlayersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
        return const OlinePlayerItem(
          title: 'Mahmoud',
          state: PlayerState.online,
        );
      }),
    );
  }
}