part of 'preparing_cubit.dart';

abstract class PreparingState extends Equatable {
  const PreparingState();

  @override
  List<Object> get props => [identityHashCode(this)];
}

class PreparingInitial extends PreparingState {}

class PreparingLoadingState extends PreparingState {}

class PreparingLoadedState extends PreparingState {}

class ErrorPreparingState extends PreparingState {}
