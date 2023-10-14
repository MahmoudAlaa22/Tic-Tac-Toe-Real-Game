import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../core_export.dart';

class HttpServiceHelper {
  static Duration requestDuration = const Duration(seconds: 50);

  static final _httpController = serviceLocator<HttpService>();
  // static final _tokenController = serviceLocator<TokenUtils>();

  static BaseOptions options() {
    return BaseOptions(
      receiveTimeout: requestDuration,
      sendTimeout: requestDuration,
      connectTimeout: requestDuration,
      baseUrl: APIs.baseURL,
      followRedirects: false,
      validateStatus: (status) {
        return status! <= 500;
      },
      headers: {
        'Accept': "application/json",
      },
    );
  }

  static InterceptorsWrapper buildInterceptor() {
    return InterceptorsWrapper(
      onRequest: _onRequest,
      onResponse: _onResponse,
      onError: _onError,
    );
  }

  static void _onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    try {} finally {
      handler.next(options); // must call it to continue request
    }
  }

  static void _onError(
      DioException error, ErrorInterceptorHandler handler) async {
    if (error.response?.statusCode == 401 ||
        error.response?.statusCode == 403) {
    } else {
      handler.next(error);
    }
  }

  static void _onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    if (response.statusCode == 401 || response.statusCode == 403) {
      handler.resolve(await _httpController.retry(response.requestOptions));
    } else {
      // if (response.statusCode != 204) {
      //   if (response.data is! String) {
      //     var result = BaseResponse.fromJson(response.data);
      //     if (result.status == 1 && result.Message == null) {
      //       throw Exception("Service Exception: ${result.Message}");
      //     }
      //   }
      // }

      handler.resolve(response);
    }
  }

  static PrettyDioLogger buildPrettyDioLoggerInterceptor() {
    return PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: false,
      responseHeader: false,
      error: true,
      maxWidth: 40,
    );
  }
}
