import '../../../../core/core_export.dart';
import '../../../../widgets/app_button.dart';
import '../../../features_export.dart';

class Preparingpage extends StatelessWidget {
  const Preparingpage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeCubit.get(context).themeCustom;
    return BlocProvider<PreparingCubit>(
      create: (context) =>
          serviceLocator<PreparingCubit>()..tryConnectToServer(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(AppPadding.p25.w),
          child: BlocBuilder<PreparingCubit, PreparingState>(
              buildWhen: (previous, current) =>
                  current is PreparingLoadingState ||
                  current is ErrorPreparingState,
              builder: (context, state) {
                final preparingCubit = PreparingCubit.get(context);
                if (state is ErrorPreparingState) {
                  return Column(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(AppStrings.tr.internetUnavailable,
                              style: theme!.themeData.textTheme.bodyLarge!
                                  .copyWith(
                                color: theme.textColor.primary,
                              )),
                        ),
                      ),
                      AppButton(
                        title: AppStrings.tr.tryAgainPrompt,
                        image: AppImages.svg.retry,
                        imageColor: theme.textColor.primary,
                        hasBorder: true,
                        onTap: () async => await preparingCubit.tryConnectToServer(),
                      ),
                    ],
                  );
                }
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        preparingCubit.progressMessage,
                        style: theme!.themeData.textTheme.bodyLarge!.copyWith(
                          color: theme.textColor.primary,
                        ),
                      ),
                      LinearProgressIndicator(
                        value: preparingCubit.progressValue,
                        borderRadius: BorderRadius.circular(AppRadius.r4),
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
