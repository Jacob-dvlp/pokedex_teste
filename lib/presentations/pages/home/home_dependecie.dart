import 'package:pokedex_test/core/core.dart';
import 'package:pokedex_test/data/data.dart';
import 'package:pokedex_test/domain/domain.dart';

import 'home.dart';

class HomeDependecie extends BaseDependencies {
  @override
  void dependencies(Dependencies d) {
    d.registerLazySingleton<IGetPokemonListDatasource>(() => GetPokemonListDatasource(conector: d<IBaseConnector>()));
    d.registerLazySingleton<IGetPokemonListRepositorio>(() => GetPokemonListRepositorio(datasource: d<IGetPokemonListDatasource>()));
    d.registerLazySingleton(() => GetPokemonListUsecase(repository: d<IGetPokemonListRepositorio>()));
    d.registerLazySingleton(() => HomeStore(d<GetPokemonListUsecase>()));
    d.registerLazySingleton(() => HomeController());
  }
}
