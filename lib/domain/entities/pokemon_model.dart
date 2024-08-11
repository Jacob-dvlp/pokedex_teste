import 'dart:convert';

import 'ability_entity.dart';
import 'move_model.dart';
import 'stat_model.dart';
import 'type_model.dart';

class PokemonEntity {
  int id;
  int baseExperience;
  double height;
  double weight;
  bool isFavorite;
  String name;
  int order;
  String urlImage;
  List<StatEntity> stats;
  List<TypeEntity> types;
  String evolutions;
  List<AbilityEntity> abilities;
  List<MoveEntity> moves;
  PokemonEntity({
    required this.id,
    required this.baseExperience,
    required this.height,
    required this.weight,
    required this.isFavorite,
    required this.name,
    required this.order,
    required this.stats,
    required this.evolutions,
    required this.types,
    required this.urlImage,
    required this.abilities,
    required this.moves,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'baseExperience': baseExperience,
      'height': height,
      'weight': weight,
      'isDefault': isFavorite,
      'name': name,
      'order': order,
      'stats': stats.map((x) => x.toMap()).toList(),
      'types': types.map((x) => x.toMap()).toList(),
      'evolutions': evolutions,
      'abilities': abilities.map((x) => x.toMap()).toList(),
      'moves': moves.map((x) => x.toMap()).toList()
    };
  }

  factory PokemonEntity.fromMap(Map<String, dynamic> map) {
    return PokemonEntity(
      id: map['id']?.toInt() ?? 0,
      baseExperience: map['baseExperience']?.toInt() ?? 0,
      height: map['height']?.toDouble() ?? 0.0,
      weight: map['weight']?.toDouble() ?? 0.0,
      isFavorite: map['isDefault'] ?? false,
      name: map['name'] ?? '',
      order: map['order']?.toInt() ?? 0,
      stats: List<StatEntity>.from(map['stats']?.map((x) => StatEntity.fromMap(x)) ?? const []),
      types: List<TypeEntity>.from(map['types']?.map((x) => TypeEntity.fromMap(x)) ?? const []),
      evolutions: map['evolutions'] ?? '',
      urlImage: map['sprites']['other']['official-artwork']['front_default'] ?? "",
      abilities: List<AbilityEntity>.from(map['abilities']?.map((x) => AbilityEntity.fromMap(x)) ?? const []),
      moves: List<MoveEntity>.from(map['moves']?.map((x) => MoveEntity.fromMap(x)) ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  double get totalStat {
    double value = 0.0;
    for (var stat in stats) {
      value += stat.baseStat;
    }
    return value;
  }

  MoveEntity getMoveByName(String name) {
    return moves.where((element) => element.name == name).first;
  }

  factory PokemonEntity.fromJson(String source) => PokemonEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PokemonModel(id: $id, baseExperience: $baseExperience, height: $height, weight: $weight, isDefault: $isFavorite, name: $name, order: $order, urlImage: $urlImage, stats: $stats, types: $types, evolutions: $evolutions)';
  }
}
