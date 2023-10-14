
import '../../core_export.dart';

class Validators {
  static bool validateTextIsNotEmpty(String text) => text.isNotEmpty;
  static bool validateTextShortLength(String text) => text.trim().length >= 2;
  // static bool validatePasswordLength(String text) => text.trim().length >= 8;
  
  static bool validatePasswordLength(String text) => text.trim().isNotEmpty;
  static bool validateUsername(String text) {
    if (text.trim().length < 2) return false;
    // List<String> names = text.trim().split(' ');
    // if (names.length > 1) return false;

    return true;
  }

  static bool validateConfirmPasswordIsMatches(
          String password, String confirmPassword) =>
      password.trim() == confirmPassword.trim();

  static bool validatePhoneNumberLength(String text) =>
      text.trim().length >= 8 && text.trim().length <= 15;

  //  => email pattern

  static String _emailPattern =
      r"^^[a-zA-Z0-9.!#$%&*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$";

  static bool emailIsValid(String email) {
    RegExp emailRegularExpression = RegExp(_emailPattern);
    return emailRegularExpression.hasMatch(email.trim());
  }

  static String hashtagPattern() => r'\B[#]+([\w]+)\b';
  static String userPattern() => r'\B[@]+([\w]+)\b';
  static String currencyPattern() => r'\B[$]+([\w]+)\b';

  //  => phone pattern
  static String _phonePattern = r"^[0-9]*[1-9]+$|^[1-9]+[0-9]*$";

  static bool phoneIsValid(String phone) {
    RegExp phoneRegularExpression = RegExp(_phonePattern);
    return phoneRegularExpression.hasMatch(phone.trim());
  }

//!-----------------------------------
static bool _validateContractIdength(String text) => text.trim().length <= 15;

  static String? validMessage(
      {required TextFieldType textFieldType, required String text}) {
    switch (textFieldType) {
      case TextFieldType.NAME:
        return validateUsername(text) ? null : "ValidateMessages.userName";
      case TextFieldType.EMAIL:
        return emailIsValid(text) ? null : "ValidateMessages.email";
      case TextFieldType.PASSWORD:
        return validatePasswordLength(text)
            ? null
            : "ValidateMessages.password";
      case TextFieldType.OTHER:
        return text.isEmpty? 'Empty Field':null;
      case TextFieldType.NUMBER:
        return _validateContractIdength(text)?null
        : "ValidateMessages.theContractNumberIsWrong ";
    }
  }
}
