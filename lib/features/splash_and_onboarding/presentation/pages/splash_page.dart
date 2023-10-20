import 'dart:developer';

import '/core/core_export.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final settingCubit = SettingCubit.get(context);
    return Scaffold(
      body: Center(
        child: BlocBuilder<SettingCubit, SettingState>(
          buildWhen: (previous, current) => current is ThemeLoadedState,
          builder: (context, state) {
            final settingCubit = SettingCubit.get(context);
            log('settingCubit.themeCustom?.getThemeLogo() ${settingCubit.themeCustom?.getThemeLogo()}');
            return SvgPicture.asset(
              settingCubit.themeCustom?.getThemeLogo() ?? AppImages.svg.logo1,
            );
          },
        ),
      ),
    );
  }
}
