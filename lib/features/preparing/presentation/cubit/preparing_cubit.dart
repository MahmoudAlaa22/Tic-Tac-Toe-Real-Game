import 'dart:async';

import '../../../../core/core_export.dart';

part 'preparing_state.dart';

class PreparingCubit extends Cubit<PreparingState> {
  PreparingCubit() : super(PreparingInitial());
  static PreparingCubit get(context) => BlocProvider.of(context);
  double progressValue = 0.0;
  String progressMessage = AppStrings.tr.connectingToServer;
  // todo(7): create method called tryConnectToServer
  /// if failed do todo(9) else if success do todo(8)
  Future<void> tryConnectToServer() async {
    try {
      progressValue = 0.0;
      progressMessage = AppStrings.tr.connectingToServer;
      Timer.periodic(const Duration(milliseconds: 500), (timer) {
        if (progressValue < 1.0) {
          progressValue += 0.25;
          _navigateToNextPage();
          emit(PreparingLoadingState());
        } else {
          timer.cancel();
          emit(ErrorPreparingState());
        }
      });
      // emit(PreparingLoadedState());
    } catch (e) {
      emit(ErrorPreparingState());
    }
  }

  // todo(8): method called _navigateToNextPage to handle navigation to home page
  void _navigateToNextPage() {
    if (progressValue <= 0.25)
      progressMessage = AppStrings.tr.connectingToServer;
    else if (progressValue <= 0.5)
      progressMessage = AppStrings.tr.establishingSecureConnection;
    else if (progressValue <= 0.75)
      progressMessage = AppStrings.tr.checkingForAccount;
    else if (progressValue <= 1.0) {
      progressMessage = AppStrings.tr.done;
      // navigate to home page
    }
  }
  // todo(9): method called onConnectingFails to handle failures of connection
}
