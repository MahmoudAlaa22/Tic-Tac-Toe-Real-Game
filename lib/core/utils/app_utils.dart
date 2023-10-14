import 'package:dartz/dartz.dart';

import '../core_export.dart';

class AppUtils {
  static ({Failure? failure, Object? data}) mapFailuerOrDone({
    required Either<Failure, Object> either,
  }) {
    Failure? f;
    Object? d;
    either.fold((failure) => f = failure, (data) => d = data);
    return (failure: f, data: d);
  }

  static Object? getArguments(BuildContext context) {
    return ModalRoute.of(context)!.settings.arguments;
  }

  ///[tajeerPlateNumber] it convert "ر س د 6087" to "6087دسر"
  static String tajeerPlateNumber({required String plateNumber}) {
    String chars = plateNumber
        .replaceAll(r' ', '')
        .substring(0, 3)
        .split('')
        .reversed
        .join();
    String num = plateNumber.replaceAll(r' ', '').substring(3).split('').join();
    return "$num$chars";
  }

  ///[travelPlateNumber] it convert  "6087دسر" to "ر س د 6087"
  static String travelPlateNumber({required String plateNumber}) {
    String numbers =
        plateNumber.replaceAll(RegExp(r'[^\d]'), ''); // Extract numbers
    String letters =
        plateNumber.replaceAll(RegExp(r'[\d]'), ''); // Extract letters

    return '${letters.split('').join(' ')} $numbers';
  }

  ///[tajeerHijrBirthDate] it take [hijrBirthDate] like 13941219 and convert it to 1394-12-19
  static String tajeerHijrBirthDate({required String hijrBirthDate}) {
    String year = hijrBirthDate.substring(0, 4);
    String month = hijrBirthDate.substring(4, 6);
    String day = hijrBirthDate.substring(6);
    return '$year-$month-$day';
  }
}
