import 'dart:convert';

class PokemonListEntity {
  final int count;
  final String next;
  final String previous;
  final List<PokemonListResultEntity> results;
  PokemonListEntity({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  Map<String, dynamic> toMap() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results.map((result) => result.toMap()).toList(),
    };
  }

  factory PokemonListEntity.fromMap(Map<String, dynamic> map) {
    return PokemonListEntity(
      count: map['count']?.toInt() ?? 0,
      next: map['next'] ?? '',
      previous: map['previous'] ?? '',
      results: List<PokemonListResultEntity>.from(map['results']?.map((result) => PokemonListResultEntity.fromMap(result)) ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonListEntity.fromJson(String source) => PokemonListEntity.fromMap(json.decode(source));
}

class PokemonListResultEntity {
  final String name;
  final String url;
  PokemonListResultEntity({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'url': url,
    };
  }

  factory PokemonListResultEntity.fromMap(Map<String, dynamic> map) {
    return PokemonListResultEntity(
      name: map['name'] ?? '',
      url: map['url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonListResultEntity.fromJson(String source) => PokemonListResultEntity.fromMap(json.decode(source));
}

// count: 1281,
// next: "https://pokeapi.co/api/v2/pokemon/?offset=150&limit=50",
// previous: "https://pokeapi.co/api/v2/pokemon/?offset=50&limit=50",
// results: [
// {
// name: "electrode",
// url: "https://pokeapi.co/api/v2/pokemon/101/"
// },