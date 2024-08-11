import 'package:pokedex_test/core/infra/base_conector.dart';
import 'package:pokedex_test/domain/entities/entities.dart';

abstract class IGetPokemonListDatasource {
  Future<PokemonListEntity> getPokemonListEntity({required int offSet, required int limit});
}

class GetPokemonListDatasource extends IGetPokemonListDatasource {
  final IBaseConector conector;

  GetPokemonListDatasource({required this.conector});

  @override
  Future<PokemonListEntity> getPokemonListEntity({required int offSet, required int limit}) async {
    String endepoint = 'pokemon/?offset=$offSet&limit=$limit';
    final response = await conector.get(endepoint);
    return PokemonListEntity.fromMap(response.data);
  }
}
