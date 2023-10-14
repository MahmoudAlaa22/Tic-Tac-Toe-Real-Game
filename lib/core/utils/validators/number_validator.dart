import '../../core_export.dart';

class NumberValidator implements CustomValidator<String> {
  @override
  String? validate(value,
      {String? message, String? oldValue, int maxNum = 100, int min = 2}) {
    if (value.isNullOrEmpty) return null;
    if (value != null) {
      try {
        num number = num.parse(value);
        if (number < min || number > maxNum)
          return message ??
              "numbersErrorMessage(maxNum.toString(), min.toString())";
      } catch (e) {
        return message ??
            "numbersErrorMessage(maxNum.toString(), min.toString())";
      }
    }
    return null;
  }
}
