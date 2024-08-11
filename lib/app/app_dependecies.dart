import 'package:dio/dio.dart';
import 'package:pokedex_test/core/core.dart';
import 'package:pokedex_test/presentations/presentation.dart';

class AppDependecies extends BaseDependencies {
  @override
  void dependencies(Dependencies d) {
    d.registerSingleton<Dio>(Dio(BaseOptions(baseUrl: 'https://pokeapi.co/api/v2/')));
    d.registerLazySingleton<IBaseConector>(() => BaseConector(dio: d<Dio>()));
    HomeDependecie().dependencies(d);
  }
}
