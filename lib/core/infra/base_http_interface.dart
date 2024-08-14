import 'package:dio/dio.dart';

abstract class IBaseHttp {
  IBaseHttp._();

  Future<Response<dynamic>> get(String path);
}
