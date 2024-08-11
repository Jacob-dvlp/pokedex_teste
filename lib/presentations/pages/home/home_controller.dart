import 'package:mobx/mobx.dart';
import 'package:pokedex_test/core/core.dart';
import 'package:pokedex_test/domain/domain.dart';

import 'home_store.dart';

class HomeController {
  final HomeStore pokemonStore = Dependencies.I<HomeStore>();

  void fetchPokemonList({required int offSet, required int limit}) {
    pokemonStore.fetchPokemonList(offSet: offSet, limit: limit);
  }

  ObservableList<PokemonListResultEntity> get pokemonList => pokemonStore.pokemonList;

  bool get isLoading => pokemonStore.isLoading;

  String? get errorMessage => pokemonStore.errorMessage;
}
