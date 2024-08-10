import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pokedex_test/core/error/exceptions.dart';

class BaseHttp {
  final Dio _dio;

  BaseHttp(this._dio, {Interceptor? interceptor}) {
    if (interceptor != null) {
      _addInterceptor(interceptor);
    }
  }

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters);
      _logInfos(response.requestOptions.path, queryParameters: response.requestOptions.queryParameters, headers: response.requestOptions.headers, data: response.requestOptions.data);
      _logResponse(response.requestOptions.path, headers: response.requestOptions.headers, response: response);
      return response;
    } on DioException catch (e) {
      debugPrint("DioException: ${e.message}");
      if (e.response?.statusCode != null) {
        _logErrorResponse(e.response!);
        throw ServerException(statusCode: e.response?.statusCode ?? 0, statusMessage: e.response?.statusMessage ?? '', dataMessage: e.response?.data.toString() ?? '');
      } else {
        throw NoConnectionException();
      }
    } on TypeError {
      throw DataPersistenceException();
    } catch (e) {
      debugPrint("Unexpected error: $e");
      throw NoConnectionException();
    }
  }

  void _addInterceptor(Interceptor interceptor) => _dio.interceptors.add(interceptor);

  void _logInfos(String path, {Map<String, dynamic>? queryParameters, Map<String, dynamic>? headers, dynamic data}) {
    debugPrint('Path: ${_dio.options.baseUrl}$path \nQueryParam: $queryParameters \nData: $data \nHeaders: $headers');
  }

  void _logResponse(String path, {Map<String, dynamic>? headers, Response? response}) {
    debugPrint('[RESPONSE]: ${response?.statusCode}\nPath: ${_dio.options.baseUrl}$path \nResponse: ${response?.data}');
  }

  void _logErrorResponse(Response response) {
    debugPrint('[ERROR RESPONSE]: ${response.statusCode}\nPath: ${response.requestOptions.path} \nResponse: ${response.data}');
  }
}
