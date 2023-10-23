part of 'splash_and_onboarding_cubit.dart';

abstract class SplashAndOnboardingState extends Equatable {
  const SplashAndOnboardingState();

  @override
  List<Object> get props => [identityHashCode(this)];
}

class SplashAndOnboardingInitial extends SplashAndOnboardingState {}
