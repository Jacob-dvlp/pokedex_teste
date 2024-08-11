import 'package:mobx/mobx.dart';
import 'package:pokedex_test/domain/domain.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final GetPokemonListUsecase getPokemonListUsecase;

  _HomeStoreBase(this.getPokemonListUsecase);

  @observable
  ObservableList<PokemonListResultEntity> pokemonList = ObservableList<PokemonListResultEntity>();

  @observable
  bool isLoading = false;

  @observable
  String? errorMessage;

  @action
  Future<void> fetchPokemonList({required int offSet, required int limit}) async {
    isLoading = true;
    errorMessage = null;

    final result = await getPokemonListUsecase(offSet: offSet, limit: limit);

    result.ways(
      (data) {
        pokemonList.clear();
        pokemonList.addAll(data);
      },
      (error) {
        errorMessage = "Failed to load Pokemon list: ${error.message}";
      },
    );

    isLoading = false;
  }
}
