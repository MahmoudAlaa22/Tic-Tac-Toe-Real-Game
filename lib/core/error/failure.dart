abstract class Failure {
  final String? msg;
  final Object? data;

  Failure({this.msg, this.data});
}

// code => 500
class InternalServerErrorFailure extends Failure {
  InternalServerErrorFailure({String? msg, Object? data})
      : super(msg: msg, data: data);
}

// code => 400
class BadRequestFailure extends Failure {
  BadRequestFailure({String? msg, Object? data}) : super(msg: msg, data: data);
}

// code => 401
class UnauthorizedFailure extends Failure {
  UnauthorizedFailure({String? msg, Object? data})
      : super(msg: msg, data: data);
}

// code => 404
class NotFoundFailure extends Failure {
  NotFoundFailure({String? msg, Object? data}) : super(msg: msg, data: data);
}

// code 405
class MethodNotAllowedFailure extends Failure {
  MethodNotAllowedFailure({String? msg, Object? data})
      : super(msg: msg, data: data);
}

// code 408
class ConnectionTimeoutFailure extends Failure {
  ConnectionTimeoutFailure({String? msg,Object? data}) : super(msg: msg,data: data);
}

// socketFailure
class NoInternetConnectionFailure extends Failure {
  NoInternetConnectionFailure({String? msg,Object? data}) : super(msg: msg,data: data);
}

// HttpFailure
class HttpFailure extends Failure {
  HttpFailure({String? msg,Object? data}) : super(msg: msg,data: data);
}

// RequestCanceled
class RequestCanceledFailure extends Failure {
  RequestCanceledFailure({String? msg,Object? data}) : super(msg: msg,data: data);
}

// UnknownFailure
class UnknownFailure extends Failure {
  UnknownFailure({String? msg,Object? data}) : super(msg: msg,data: data);
}

// Need to logout user
class LogoutFailure extends Failure {
  LogoutFailure({String? msg,Object? data}) : super(msg: msg,data: data);
}

class CustomFailure extends Failure {
  final dynamic data;

  CustomFailure({this.data}) : super(msg: data.toString());
}
