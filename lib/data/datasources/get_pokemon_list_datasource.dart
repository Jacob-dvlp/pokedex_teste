import 'package:pokedex_test/core/infra/base_connector.dart';

abstract class IGetPokemonListDatasource {
  Future<Map<String, dynamic>> getPokemonListEntity({required int offSet, required int limit});
  Future<Map<String, dynamic>> getPokemonEntity({required int id});
}

class GetPokemonListDatasource extends IGetPokemonListDatasource {
  final IBaseConnector conector;

  GetPokemonListDatasource({required this.conector});

  @override
  Future<Map<String, dynamic>> getPokemonListEntity({required int offSet, required int limit}) async {
    String endepoint = 'pokemon/?offset=$offSet&limit=$limit';
    final response = await conector.get(endepoint);
    return response.data;
  }

  @override
  Future<Map<String, dynamic>> getPokemonEntity({required int id}) async {
    String endepoint = 'pokemon/$id';
    final response = await conector.get(endepoint);
    return response.data;
  }
}
