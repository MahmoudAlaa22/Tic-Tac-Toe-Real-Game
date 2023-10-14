import '../../core/core_export.dart';

class FailureHandler {
  Failure getFailureType(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        return RequestCanceledFailure(
            msg: ValidateMessages.erorr.requestWasCancelled);
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.connectionTimeout:
        return ConnectionTimeoutFailure(
            msg: ValidateMessages.erorr.requestTimeout);
      case DioExceptionType.badResponse:
      case DioExceptionType.unknown:
        return _handleStatuesCodeResponse(dioException.response);
      case DioExceptionType.connectionError:
      case DioExceptionType.badCertificate:
        return NoInternetConnectionFailure(
            msg: ValidateMessages.erorr.noInternetConnection);
    }
  }

  dynamic _handleStatuesCodeResponse(Response? response) {
    if (response == null) {
      return UnknownFailure(msg: ValidateMessages.erorr.genericError);
    } else {
      switch (response.statusCode) {
        case 200:
          return response;
        case 500:
          return InternalServerErrorFailure(
            msg: ValidateMessages.erorr.genericError,
            data: response.data,
          );
        case 400:
          return BadRequestFailure(
            msg: ValidateMessages.erorr.badRequest,
            data: response.data,
          );
        case 401:
          return UnauthorizedFailure(
            msg: ValidateMessages.erorr.unauthorizedError,
            data: response.data,
          );
        case 404:
          return NotFoundFailure(
            msg: ValidateMessages.erorr.notFound,
            data: response.data,
          );
        case 405:
          return MethodNotAllowedFailure(
            msg: ValidateMessages.erorr.methodNotAllowed,
            data: response.data,
          );
        case 408:
          return ConnectionTimeoutFailure(
            msg: ValidateMessages.erorr.requestTimeout,
            data: response.data,
          );
        default:
          return NoInternetConnectionFailure(
            msg: ValidateMessages.erorr.noInternetConnection,
            data: response.data,
          );
      }
    }
  }
}
