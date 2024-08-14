import 'detail_entity.dart';

class TypeEntity {
  final int slot;
  final TypeDetailEntity type;

  TypeEntity({
    required this.slot,
    required this.type,
  });

  factory TypeEntity.fromJson(Map<String, dynamic> json) {
    return TypeEntity(
      slot: json['slot'] as int,
      type: TypeDetailEntity.fromJson(json['type'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'slot': slot,
      'type': type.toJson(),
    };
  }
}

class TypeDetailEntity extends DetailEntity {
  @override
  final String name;
  @override
  final String url;

  TypeDetailEntity({
    required this.name,
    required this.url,
  });

  factory TypeDetailEntity.fromJson(Map<String, dynamic> json) {
    return TypeDetailEntity(
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
