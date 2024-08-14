// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStoreBase, Store {
  late final _$pokemonListAtom =
      Atom(name: '_HomeStoreBase.pokemonList', context: context);

  @override
  ObservableList<PokemonEntity> get pokemonList {
    _$pokemonListAtom.reportRead();
    return super.pokemonList;
  }

  @override
  set pokemonList(ObservableList<PokemonEntity> value) {
    _$pokemonListAtom.reportWrite(value, super.pokemonList, () {
      super.pokemonList = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_HomeStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_HomeStoreBase.errorMessage', context: context);

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$offSetAtom =
      Atom(name: '_HomeStoreBase.offSet', context: context);

  @override
  int get offSet {
    _$offSetAtom.reportRead();
    return super.offSet;
  }

  @override
  set offSet(int value) {
    _$offSetAtom.reportWrite(value, super.offSet, () {
      super.offSet = value;
    });
  }

  late final _$fetchPokemonListAsyncAction =
      AsyncAction('_HomeStoreBase.fetchPokemonList', context: context);

  @override
  Future<void> fetchPokemonList({required int limit}) {
    return _$fetchPokemonListAsyncAction
        .run(() => super.fetchPokemonList(limit: limit));
  }

  @override
  String toString() {
    return '''
pokemonList: ${pokemonList},
isLoading: ${isLoading},
errorMessage: ${errorMessage},
offSet: ${offSet}
    ''';
  }
}
