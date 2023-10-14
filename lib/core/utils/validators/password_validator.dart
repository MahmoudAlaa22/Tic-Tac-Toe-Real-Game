import '../../core_export.dart';

class PasswordValidator extends CustomValidator<String> {
  @override
  String? validate(String? value, {String? message}) {
    if (value.isNullOrEmpty)
      return message ?? ValidateMessages.erorr.emptyField;
    // if(_validPassword(value)) {
    //   return null;
    // }
    return null;
  }

  ///- Allows characters, digits and special characters.
  // - The length must be minimum 8 characters long, 20 long.
  // - Must include characters and digits.
  // - A hint message should appear to inform user with the password minimum requirements and state each requirement whether passed or not based on user entry.
  bool _validPassword(String value) {
    // String pattern = r'^(?=.*?[A-Z|a-z])(?=.*?[A-Z|a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,19}$';
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[!@#\$&*~])(?=.*?[0-9]).{8,19}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }
}

class PasswordStepsValidator {
  List<PasswordValidationMessage> checkPassword(String? value) {
    var message = PasswordValidator().validate(value);
    var response = <PasswordValidationMessage>[];
    if (message == null) {
      response = [];
    } else {
      bool containsUpperChar = value.isContainsUpperChar();
      response.add(
          PasswordValidationMessage("oneUpperCharMinmum", containsUpperChar));
      bool containsLowerChar = value.isContainsLowerChar();
      response.add(
          PasswordValidationMessage("oneLowerCharMinmum", containsLowerChar));
      bool containsDigits = value.isContainsDigit();
      response.add(PasswordValidationMessage("oneDigitMinmum", containsDigits));
      bool containsSpecialChar = value.isContainsSpecialChar();
      response.add(
          PasswordValidationMessage("oneSpecialCharMin", containsSpecialChar));
      bool meetLimit = value.isMatchLength(8, 20);
      response.add(PasswordValidationMessage("altLeast8Chars", meetLimit));
    }
    return response;
  }
}

class PasswordValidationMessage {
  final String errorMsgs;
  final bool isValid;

  const PasswordValidationMessage(this.errorMsgs, this.isValid);
}
