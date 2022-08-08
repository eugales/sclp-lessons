import 'package:dio/dio.dart';

class Api {
  late final Dio dio = Dio(options)
    ..interceptors.addAll([
      _BasicInterceptor(),
    ]);

  final options = BaseOptions(
    baseUrl: 'https://rickandmortyapi.com/api',
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
}

class _BasicInterceptor implements Interceptor {

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print("Error: $err");
    handler.next(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) {
      handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
