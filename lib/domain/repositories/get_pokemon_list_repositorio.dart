import 'package:pokedex_test/core/core.dart';
import 'package:pokedex_test/domain/entities/entities.dart';

abstract class IGetPokemonListRepositorio extends BaseRepository {
  Future<ResultState<BaseFailure, List<PokemonListResultEntity>>> getPokemonListEntity({required int offSet, required int limit});
}
