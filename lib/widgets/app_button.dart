import '/core/core_export.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.image,
    this.color,
    this.imageColor,
    this.hasBorder = false,
    required this.title,
    required this.onTap,
  });
  final String? image;
  final Color? color;
  final Color? imageColor;
  final bool hasBorder;
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    final theme = ThemeCubit.get(context).themeCustom;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 0.05.sh,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.r4),
          border: hasBorder ? Border.all(color: theme!.boxBorderColor) : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null)
              SvgPicture.asset(
                image!,
                colorFilter:
                    imageColor == null ? null : ColorFilter.mode(imageColor!,BlendMode.srcIn),
              ),
            Text(
              title,
              style: theme!.themeData.textTheme.bodyLarge!.copyWith(
                color: theme.textColor.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
