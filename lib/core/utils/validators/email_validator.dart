

import '../utils_epxort.dart';

class EmailValidator implements CustomValidator<String> {
  @override
  String? validate(value, {String? message}) {
    if (value.isNullOrEmpty) return "requiredField";
    if (_validEmail(value!)) return null;
    return message ?? "emailErrorMessage";
  }

  bool _validEmail(String value) {
    String pattern = r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }
}
