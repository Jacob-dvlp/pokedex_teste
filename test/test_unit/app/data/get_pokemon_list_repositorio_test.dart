import 'package:pokedex_test/core/core.dart';
import 'package:pokedex_test/data/data.dart';
import 'package:pokedex_test/domain/domain.dart';
import 'package:test/test.dart';

void main() {
  group('GetPokemonListRepositorio Tests', () {
    late MockGetPokemonListDatasource mockDatasource;
    late GetPokemonListRepositorio repository;

    setUp(() {
      // Setup your mock datasource with expected return values or exceptions
      mockDatasource = MockGetPokemonListDatasource(mockResponse: {'results': []});
      repository = GetPokemonListRepositorio(datasource: mockDatasource);
    });

    test('should return a list of Pokemon when getPokemonListEntity is successful', () async {
      final result = await repository.getPokemonListEntity(offSet: 0, limit: 20);
      expect(result, isA<IsResult>());
      expect(result.isSuccess, isTrue);

      expect(result.isSuccess(), isA<List<PokemonListResultEntity>>());
    });

    test('should handle errors when getPokemonListEntity fails', () async {
      final mockDatasourceWithError = MockGetPokemonListDatasource(
        mockResponse: {},
        exceptionToThrow: DataPersistenceException(),
      );
      repository = GetPokemonListRepositorio(datasource: mockDatasourceWithError);

      final result = await repository.getPokemonListEntity(offSet: 0, limit: 20);

      expect(result, isA<IsError>());
      expect(result.isError(), isA<BaseFailure>());
    });
  });
}

class MockGetPokemonListDatasource implements IGetPokemonListDatasource {
  final Map<String, dynamic> mockResponse;
  final Exception? exceptionToThrow;

  MockGetPokemonListDatasource({required this.mockResponse, this.exceptionToThrow});

  @override
  Future<Map<String, dynamic>> getPokemonListEntity({required int offSet, required int limit}) async {
    if (exceptionToThrow != null) {
      throw exceptionToThrow ?? Exception();
    }
    return mockResponse;
  }

  @override
  Future<Map<String, dynamic>> getPokemonEntity({required int id}) async {
    if (exceptionToThrow != null) {
      throw exceptionToThrow ?? Exception();
    }
    return mockResponse;
  }
}
