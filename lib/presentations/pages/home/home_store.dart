import 'package:mobx/mobx.dart';
import 'package:pokedex_test/domain/domain.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final GetPokemonListUsecase getPokemonListUsecase;

  _HomeStoreBase(this.getPokemonListUsecase);

  @observable
  ObservableList<PokemonEntity> pokemonList = ObservableList<PokemonEntity>();

  @observable
  bool isLoading = false;

  @observable
  String? errorMessage;

  @observable
  int offSet = 0;

  @action
  Future<void> fetchPokemonList({required int limit}) async {
    if (isLoading) return;
    isLoading = true;
    errorMessage = null;
    final result = await getPokemonListUsecase(offSet: offSet, limit: limit);
    result.map(
      (data) {
        pokemonList.addAll(data);
        offSet += limit;
      },
      (error) {
        errorMessage = "Failed to load Pokemon list: ${error.message}";
      },
    );

    isLoading = false;
  }
}
