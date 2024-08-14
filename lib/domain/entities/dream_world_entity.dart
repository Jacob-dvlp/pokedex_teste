class DreamWorldEntity {
  final String? frontDefault;
  final String? frontFemale;

  DreamWorldEntity({
    required this.frontDefault,
    required this.frontFemale,
  });

  factory DreamWorldEntity.fromJson(Map<String, dynamic> json) {
    return DreamWorldEntity(
      frontDefault: json['front_default'] ?? '',
      frontFemale: json['front_female'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'front_default': frontDefault,
      'front_female': frontFemale,
    };
  }
}
