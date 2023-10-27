import 'package:tic_tac_toe_real_game/core/core_export.dart';
import 'package:tic_tac_toe_real_game/widgets/app_button.dart';

import '../../../features_export.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = LoginCubit.get(context);
    return Scaffold(
      body: BlocBuilder<ThemeCubit, ThemeState>(
          buildWhen: (previous, current) =>
              current is ThemeLoadedState || current is LanguageLoadedState,
          builder: (context, state) {
            final theme = ThemeCubit.get(context).themeCustom;
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p15.w),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 0.8.sh,
                    width: 1.sw,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(theme!.logo),
                        Text(AppStrings.tr.welcome,
                            style: theme.themeData.textTheme.displaySmall!
                                .copyWith(
                              color: theme.textColor.primary,
                            )),
                        Text(AppStrings.tr.signInPrompt,
                            style:
                                theme.themeData.textTheme.titleLarge!.copyWith(
                              color: theme.textColor.secondary,
                            )),
                      ],
                    ),
                  ),
                  AppButton(
                    title: AppStrings.tr.googleSignIn,
                    hasBorder: true,
                    image: AppImages.svg.google,
                    onTap: () async => await loginCubit.signInWithGoogle(),
                  ),
                  SizedBox(
                    height: 0.02.sh,
                  ),
                  AppButton(
                    title: AppStrings.tr.facebookSignIn,
                    hasBorder: true,
                    image: AppImages.svg.facebook,
                    onTap: () async => await loginCubit.signInWithFacebook(),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
