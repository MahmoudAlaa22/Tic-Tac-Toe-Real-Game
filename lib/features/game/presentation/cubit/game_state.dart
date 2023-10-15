part of 'game_cubit.dart';

abstract class GameState extends Equatable {
  const GameState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends GameState {}
