import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex_test/core/core.dart';
import 'package:pokedex_test/data/data.dart';

class MockBaseConnector extends Mock implements IBaseConnector {}

void main() {
  group('GetPokemonListDatasource Tests', () {
    late GetPokemonListDatasource datasource;
    late MockBaseConnector mockBaseConnector;

    setUp(() {
      mockBaseConnector = MockBaseConnector();
      datasource = GetPokemonListDatasource(conector: mockBaseConnector);

      final defaultMockResponse = Response<Map<String, dynamic>>(
        data: {'default': 'response'},
        statusCode: 200,
        requestOptions: RequestOptions(path: 'any_path'),
      );
      when(mockBaseConnector.get('')).thenAnswer((_) async => defaultMockResponse);
    });

    test('should return a list of pokemons when called with offset and limit', () async {
      final specificMockResponse = Response<Map<String, dynamic>>(
        data: {'results': []},
        statusCode: 200,
        requestOptions: RequestOptions(path: 'pokemon/?offset=0&limit=20'),
      );

      when(mockBaseConnector.get('pokemon/?offset=0&limit=20')).thenAnswer((_) async => specificMockResponse);

      final result = await datasource.getPokemonListEntity(offSet: 0, limit: 20);

      verify(mockBaseConnector.get('pokemon/?offset=0&limit=20')).called(1);
      expect(result, contains('results'));
    });
  });
}
