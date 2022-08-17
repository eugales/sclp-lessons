import 'dart:io';

import 'package:dio/dio.dart';
import 'package:lessons2/generated/l10n.dart';

class Api {
  late final Dio dio = Dio(options)
    ..interceptors.addAll([
      _BasicInterceptor(),
    ]);

  final options = BaseOptions(
    baseUrl: 'https://rickandmortyapi.com/api',
  );
}

class _BasicInterceptor implements Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print("Error: $err");

    if (err.error is SocketException) {
      err.response = Response<String>(
        requestOptions: err.requestOptions,
        data: S.current.noConnection,
      );
    }
    if (err.error is HttpException) {
      err.response = Response<String>(
        requestOptions: err.requestOptions,
        data: err.error,
      );
    }
    if (err.error is String && err.response?.statusCode == 404) {
      err.response = Response<String>(
        requestOptions: err.requestOptions,
        data: S.current.noItemsFound,
      );
    }
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
    // InternetAddress.lookup('https://rickandmortyapi.com');
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
