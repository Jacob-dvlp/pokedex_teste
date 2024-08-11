import 'package:pokedex_test/core/core.dart';
import 'package:pokedex_test/domain/domain.dart';

class GetPokemonListUsecase {
  final IGetPokemonListRepositorio repository;

  GetPokemonListUsecase({required this.repository});

  Future<ResultState<BaseFailure, List<PokemonListResultEntity>>> call({required int offSet, required int limit}) async {
    return await repository.getPokemonListEntity(offSet: offSet, limit: limit);
  }
}
