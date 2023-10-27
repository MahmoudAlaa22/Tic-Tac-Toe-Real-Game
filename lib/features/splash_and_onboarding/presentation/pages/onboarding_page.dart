import '../../../features_export.dart';
import '/core/core_export.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = SplashAndOnboardingCubit.get(context);
    return BlocBuilder<ThemeCubit, ThemeState>(
        buildWhen: (previous, current) =>
            current is ThemeLoadedState || current is LanguageLoadedState,
        builder: (context, state) {
          final theme = ThemeCubit.get(context).themeCustom;
          return IntroductionScreen(
            key: cubit.introKey,
            pages: SplashAndOnboardingConst.onBoardingPages(
                decoration: PageDecoration(
                    titleTextStyle: theme!.themeData.textTheme.displaySmall!,
                    bodyTextStyle: theme.themeData.textTheme.titleLarge!)),
            allowImplicitScrolling: true,
            onDone: () async => await cubit.handleOnBoardingDone(context),
            onChange: (index) {},
            skipOrBackFlex: 0,
            nextFlex: 0,
            showBackButton: true,
            back: Text(AppStrings.tr.back,
                style: theme.themeData.textTheme.bodyLarge!.copyWith(
                  color: theme.textColor.secondary,
                )),
            next: Text(AppStrings.tr.next,
                style: theme.themeData.textTheme.bodyMedium!.copyWith(
                  color: theme.textColor.primary,
                )),
            done: Text(AppStrings.tr.done,
                style: theme.themeData.textTheme.bodyMedium!.copyWith(
                  color: theme.textColor.primary,
                )),
            curve: Curves.fastLinearToSlowEaseIn,
            dotsDecorator: DotsDecorator(
              activeColor: theme.activeColor,
              color: theme.inActiveColor,
            ),
          );
        });
  }
}
