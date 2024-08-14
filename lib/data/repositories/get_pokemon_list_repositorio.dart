import 'package:pokedex_test/core/core.dart';
import 'package:pokedex_test/data/datasources/get_pokemon_list_datasource.dart';
import 'package:pokedex_test/domain/domain.dart';

class GetPokemonListRepositorio extends IGetPokemonListRepositorio implements BaseRepository {
  final IGetPokemonListDatasource datasource;

  GetPokemonListRepositorio({required this.datasource});

  @override
  Future<ResultState<BaseFailure, List<PokemonListResultEntity>>> getPokemonListEntity({required int offSet, required int limit}) async {
    return tryExecute<List<PokemonListResultEntity>>(() async {
      final List<PokemonListResultEntity> result = [];
      final response = await datasource.getPokemonListEntity(offSet: offSet, limit: limit);
      final PokemonListEntity pokemonListEntity = PokemonListEntity.fromMap(response);
      result.addAll(pokemonListEntity.results);
      return result;
    });
  }

  @override
  Future<ResultState<BaseFailure, PokemonEntity>> getPokemonEntity({required int id}) async {
    return tryExecute<PokemonEntity>(() async {
      final response = await datasource.getPokemonEntity(id: id);
      return PokemonEntity.fromJson(response);
    });
  }
}
