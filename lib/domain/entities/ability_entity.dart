import 'dart:convert';

class AbilityEntity {
  final String name;

  final String url;
  AbilityEntity({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'url': url,
    };
  }

  factory AbilityEntity.fromMap(Map<String, dynamic> map) {
    return AbilityEntity(
      name: map['ability']['name'] ?? '',
      url: map['ability']['url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AbilityEntity.fromJson(String source) => AbilityEntity.fromMap(json.decode(source));
}
