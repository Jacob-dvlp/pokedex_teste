import 'package:pokedex_test/core/core.dart';
import 'package:pokedex_test/data/datasourcies/get_pokemon_list_datasource.dart';
import 'package:pokedex_test/domain/domain.dart';

class GetPokemonListRepositorio extends IGetPokemonListRepositorio implements BaseRepository {
  final IGetPokemonListDatasource datasource;

  GetPokemonListRepositorio({required this.datasource});

  @override
  Future<ResultState<BaseFailure, List<PokemonListResultEntity>>> getPokemonListEntity({required int offSet, required int limit}) async {
    return tryExecute<List<PokemonListResultEntity>>(() async {
      final List<PokemonListResultEntity> result = [];
      final PokemonListEntity response = await datasource.getPokemonListEntity(offSet: offSet, limit: limit);
      result.addAll(response.results);
      return result;
    });
  }
}
