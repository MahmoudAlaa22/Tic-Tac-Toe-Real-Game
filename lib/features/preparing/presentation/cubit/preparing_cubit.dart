import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'preparing_state.dart';

class PreparingCubit extends Cubit<PreparingState> {
  PreparingCubit() : super(PreparingInitial());

  // todo(7): create method called tryConnectToServer
  /// if failed do todo(9) else if success do todo(8)
  // todo(8): method called navigateToNextPage to handle navigation to home page
  // todo(9): method called onConnectingFails to handle failures of connection
}
