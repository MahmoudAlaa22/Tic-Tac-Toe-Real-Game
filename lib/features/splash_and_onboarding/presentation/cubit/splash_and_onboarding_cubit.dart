import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_and_onboarding_state.dart';

class SplashAndOnboardingCubit extends Cubit<SplashAndOnboardingState> {
  SplashAndOnboardingCubit() : super(SplashAndOnboardingInitial());

  // todo(1): create a method called startSplashTime to handle splash time
  /// the splash delay duration is minimum 3 seconds not less
  /// after splash time finished call todo(2)

  /// todo(2): create method called handleNavigationToNextPage to handle navigation to the next page
  /// check if is first time launch (navigate to onBoarding page else if the user has saved data locally go to preparing page else go to login page)
}
