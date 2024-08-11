import 'package:dio/dio.dart';
import 'package:pokedex_test/core/base_http.dart';

import 'base_http_interface.dart';

abstract interface class IBaseConector implements IBaseHttp {}

class BaseConector extends BaseHttp implements IBaseConector {
  final Dio dio;

  BaseConector({required this.dio}) : super(dio);
}
