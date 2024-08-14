import 'detail_entity.dart';

class AbilityEntity {
  final AbilityDetailEntity ability;
  final bool isHidden;
  final int slot;

  AbilityEntity({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  factory AbilityEntity.fromJson(Map<String, dynamic> json) {
    return AbilityEntity(
      ability: AbilityDetailEntity.fromJson(json['ability'] ?? {}),
      isHidden: json['is_hidden'] ?? false,
      slot: json['slot'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ability': ability.toJson(),
      'is_hidden': isHidden,
      'slot': slot,
    };
  }
}

class AbilityDetailEntity extends DetailEntity {
  @override
  final String name;
  @override
  final String url;

  AbilityDetailEntity({
    required this.name,
    required this.url,
  });

  factory AbilityDetailEntity.fromJson(Map<String, dynamic> json) {
    return AbilityDetailEntity(
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}
