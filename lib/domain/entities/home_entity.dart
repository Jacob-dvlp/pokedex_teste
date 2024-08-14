class HomeEntity {
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;

  HomeEntity({
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory HomeEntity.fromJson(Map<String, dynamic> json) {
    return HomeEntity(
      frontDefault: json['front_default'] ?? '',
      frontFemale: json['front_female'] ?? '',
      frontShiny: json['front_shiny'] ?? '',
      frontShinyFemale: json['front_shiny_female'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'front_default': frontDefault,
      'front_female': frontFemale,
      'front_shiny': frontShiny,
      'front_shiny_female': frontShinyFemale,
    };
  }
}
