class OfficialArtworkEntity {
  final String? frontDefault;
  final String? frontShiny;

  OfficialArtworkEntity({
    required this.frontDefault,
    required this.frontShiny,
  });

  factory OfficialArtworkEntity.fromJson(Map<String, dynamic> json) {
    return OfficialArtworkEntity(
      frontDefault: json['front_default'] ?? '',
      frontShiny: json['front_shiny'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'front_default': frontDefault,
      'front_shiny': frontShiny,
    };
  }
}
