import 'dart:convert';

class StatEntity {
  double baseStat;
  String name;
  StatEntity({
    this.baseStat = 0.0,
    this.name = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'base_stat': baseStat,
      'name': name,
    };
  }

  factory StatEntity.fromMap(Map<String, dynamic> map) {
    return StatEntity(
      baseStat: map['base_stat']?.toDouble() ?? 0.0,
      name: map['stat']['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory StatEntity.fromJson(String source) => StatEntity.fromMap(json.decode(source));
}
