part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [identityHashCode(this)];
}

class HomeInitial extends HomeState {}
