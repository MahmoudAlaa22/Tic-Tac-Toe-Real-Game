import '../../core_export.dart';

class ValidateMessages {
  static _ErrorMessage erorr = _ErrorMessage();
  static _SuccessMessage success = _SuccessMessage();
}

class _ErrorMessage {
  final emptyField = AppStrings.tr.thisFieldIsEmpty;
  final genericError = AppStrings.tr.genericError;
  final badRequest = AppStrings.tr.badRequest;
  final unauthorizedError = AppStrings.tr.unauthorizedError;
  final notFound = AppStrings.tr.notFound;
  final methodNotAllowed = AppStrings.tr.methodNotAllowed;
  final requestTimeout = AppStrings.tr.requestTimeout;
  final noInternetConnection = AppStrings.tr.noInternetConnection;
  final requestWasCancelled = AppStrings.tr.requestWasCancelled;
}

class _SuccessMessage {}
