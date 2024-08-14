class StatEntity {
  final int baseStat;
  final int effort;
  final StatDetailEntity stat;

  StatEntity({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory StatEntity.fromJson(Map<String, dynamic> json) {
    return StatEntity(
      baseStat: json['base_stat'] as int,
      effort: json['effort'] as int,
      stat: StatDetailEntity.fromJson(json['stat'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'base_stat': baseStat,
      'effort': effort,
      'stat': stat.toJson(),
    };
  }
}

class StatDetailEntity {
  final String name;
  final String url;

  StatDetailEntity({
    required this.name,
    required this.url,
  });

  factory StatDetailEntity.fromJson(Map<String, dynamic> json) {
    return StatDetailEntity(
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}
