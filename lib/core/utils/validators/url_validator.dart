
import '../../core_export.dart';

class UrlValidator implements CustomValidator<String> {
  @override
  String? validate(value, {String? message, String? oldValue, int maxNum = 100}) {
    if (value.isNullOrEmpty) return null;
    if (!RegExp(r"^(?:http|https)://[\w\-_]+(?:\.[\w\-_]+)+[\w\-.,@?^=%&:/~\\+#]*$", caseSensitive: false).hasMatch(value!)) {
      return "enterValidUrl";
    }
    return null;
  }
}
