import '../../core_export.dart';

class LengthValidator implements CustomValidator<String> {
  @override
  String? validate(value,
      {String? message, String? oldValue, int maxNum = 100, int min = 2}) {
    if (value.isNullOrEmpty) return ValidateMessages.erorr.emptyField;
    if (value!.length < min || value.length > maxNum) {
      return '$message $min ${AppStrings.tr.and} $maxNum';
    }
    return null;
  }
}
