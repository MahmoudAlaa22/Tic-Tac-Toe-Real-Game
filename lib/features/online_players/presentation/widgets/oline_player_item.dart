import '../../../features_export.dart';
import '/core/core_export.dart';

class OlinePlayerItem extends StatelessWidget {
  const OlinePlayerItem({
    super.key,
    required this.title,
    required this.state,
  });
  final String title;
  final PlayerState state;
  @override
  Widget build(BuildContext context) {
    final theme = ThemeCubit.get(context);
    return SizedBox(
      width: 1.sw,
      height: 0.06.sh,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    theme.themeCustom!.themeData.textTheme.titleLarge!.copyWith(
                  color: theme.themeCustom!.textColor.primary,
                ),
              ),
              SizedBox(
                height: 0.015.sh,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: state.color,
                    ),
                    Text(state.name,
                        style: theme.themeCustom!.themeData.textTheme.bodySmall!
                            .copyWith(
                          color: theme.themeCustom!.textColor.primary,
                          height: 1.h,
                        )),
                  ],
                ),
              )
            ],
          ),
          Container(
            width: 0.15.sw,
            height: 0.03.sh,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppRadius.r4),
              border: Border.all(
                color: theme.themeCustom!.textColor.primary!,
              ),
            ),
            child: Text(AppStrings.tr.invite,
                style:
                    theme.themeCustom!.themeData.textTheme.bodySmall!.copyWith(
                  color: theme.themeCustom!.textColor.primary,
                )),
          )
        ],
      ),
    );
    // return ListTile(
    //   title: Text(
    //     title,
    //     style: theme.themeCustom!.themeData.textTheme.titleLarge!.copyWith(
    //       color: theme.themeCustom!.textColor.primary,
    //     ),
    //   ),
    //   subtitle: SizedBox(
    //     width: 0.1.sw,
    //     height: 0.02.sh,
    //     child: Row(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Icon(
    //           Icons.circle,
    //           size: 10,
    //           color: state.color,
    //         ),
    //         Text(state.name,
    //             style:
    //                 theme.themeCustom!.themeData.textTheme.bodySmall!.copyWith(
    //               color: theme.themeCustom!.textColor.primary,
    //             )),
    //       ],
    //     ),
    //   ),
    //   trailing: Container(
    //     width: 0.15.sw,
    //     height: 0.03.sh,
    //     alignment: Alignment.center,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(AppRadius.r4),
    //       border: Border.all(
    //         color: theme.themeCustom!.textColor.primary!,
    //       ),
    //     ),
    //     child: Text(AppStrings.tr.invite,
    //         style: theme.themeCustom!.themeData.textTheme.bodySmall!.copyWith(
    //           color: theme.themeCustom!.textColor.primary,
    //         )),
    //   ),
    // );
  }
}
