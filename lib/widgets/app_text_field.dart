import '../core/core_export.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.title,
    this.hintText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.validate,
    this.onChanged,
    this.onSaved,
    this.keyboardType = TextInputType.text,
    this.obsecureText = false,
    this.maxLines = 1,
    this.controller,
    this.focusNode,
    this.textAlign = TextAlign.start,
    this.onFieldSubmitted,
    this.enabled = true,
  });
  final String title;
  final String? hintText;
  final String? errorText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validate;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  final bool obsecureText;
  final bool enabled;
  final int? maxLines;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextAlign textAlign;
  final Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    final theme = ThemeCubit.get(context).themeCustom;
    return TextFormField(
      controller: controller,
      enabled: enabled,
      style: theme!.themeData.textTheme.bodyMedium!.copyWith(
        color: theme.textColor.primary,
      ),
      textAlign: textAlign,
      focusNode: focusNode,
      cursorColor: theme.textColor.primary,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: title,
        prefixIcon: prefixIcon,
        errorText: errorText,
        suffixIcon: suffixIcon,
      ),
      obscureText: obsecureText,
      onChanged: onChanged,
      onSaved: onSaved,
      keyboardType: keyboardType,
      validator: validate,
      maxLines: maxLines,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
