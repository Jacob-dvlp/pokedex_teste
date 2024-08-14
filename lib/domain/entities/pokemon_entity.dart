import 'package:pokedex_test/domain/entities/entities.dart';

import 'stats_entity.dart';
import 'type_entity.dart';

class PokemonEntity {
  final int? id;
  final String name;
  final SpritesEntity sprites;
  final List<StatEntity> stat;
  final List<TypeEntity> types;

  PokemonEntity({
    required this.id,
    required this.name,
    required this.sprites,
    required this.stat,
    required this.types,
  });

  factory PokemonEntity.fromJson(Map<String, dynamic> json) {
    var statsList = json['stats'] as List<dynamic>;
    var typesList = json['types'] as List<dynamic>;
    return PokemonEntity(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      sprites: SpritesEntity.fromJson(json['sprites']),
      stat: statsList.map((e) => StatEntity.fromJson(e)).toList(),
      types: typesList.map((e) => TypeEntity.fromJson(e)).toList(),
    );
  }
}
