import 'dart:developer';

import '../../../features_export.dart';
import '/core/core_export.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashAndOnboardingCubit.get(context).startSplashTime(context);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    AppStrings.get(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashAndOnboardingCubit, SplashAndOnboardingState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: BlocBuilder<ThemeCubit, ThemeState>(
              buildWhen: (previous, current) => current is ThemeLoadedState,
              builder: (context, state) {
                final settingCubit = ThemeCubit.get(context);
                return SvgPicture.asset(
                  settingCubit.themeCustom?.logo ??
                      AppImages.svg.logo1,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
