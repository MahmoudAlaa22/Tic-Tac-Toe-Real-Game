import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_and_onboarding_state.dart';

class SplashAndOnboardingCubit extends Cubit<SplashAndOnboardingState> {
  SplashAndOnboardingCubit() : super(SplashAndOnboardingInitial());
}
