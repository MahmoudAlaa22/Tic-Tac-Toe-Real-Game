part of 'dashboard_cubit.dart';

abstract class DashboardState extends Equatable {
  const DashboardState();

  @override
  List<Object> get props => [identityHashCode(this)];
}

class DashboardInitial extends DashboardState {}
class DashboardBottomBarIndexState extends DashboardState {}
