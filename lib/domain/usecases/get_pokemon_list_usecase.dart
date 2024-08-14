import 'package:pokedex_test/core/core.dart';
import 'package:pokedex_test/domain/domain.dart';

class GetPokemonListUsecase {
  final IGetPokemonListRepositorio repository;

  GetPokemonListUsecase({required this.repository});

  Future<ResultState<BaseFailure, List<PokemonEntity>>> call({required int offSet, required int limit}) async {
    try {
      List<PokemonEntity> pokemonList = [];
      final resultList = await repository.getPokemonListEntity(offSet: offSet, limit: limit);
      if (resultList.isSuccess()) {
        final pokemonNameIdList = resultList.getOrElse(() => []);
        for (var pokemon in pokemonNameIdList) {
          final entityResult = await repository.getPokemonEntity(id: int.parse(extractPokemonId(pokemon.url)));
          if (entityResult.isSuccess()) {
            final pokemonEntity = entityResult.getOrElse(() => PokemonEntity.fromJson({}));
            pokemonList.add(pokemonEntity);
          }
        }
        return IsResult(pokemonList);
      } else {
        return IsError<BaseFailure, List<PokemonEntity>>(Object as BaseFailure);
      }
    } catch (e) {
      return IsError<BaseFailure, List<PokemonEntity>>(e as BaseFailure);
    }
  }
}
