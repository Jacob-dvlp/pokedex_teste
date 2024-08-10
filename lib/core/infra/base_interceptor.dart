import 'package:dio/dio.dart';

abstract class BaseInterceptor extends Interceptor {
  @override
  onRequest(RequestOptions options, RequestInterceptorHandler handler);

  @override
  onResponse(Response response, ResponseInterceptorHandler handler);

  @override
  onError(DioException err, ErrorInterceptorHandler handler);
}
