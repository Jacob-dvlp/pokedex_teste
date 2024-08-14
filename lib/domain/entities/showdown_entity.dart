class ShowdownEntity {
  final String? backDefault;
  final String? backFemale;
  final String? backShiny;
  final String? backShinyFemale;
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;

  ShowdownEntity({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory ShowdownEntity.fromJson(Map<String, dynamic> json) {
    return ShowdownEntity(
      backDefault: json['back_default'] ?? '',
      backFemale: json['back_female'] ?? '',
      backShiny: json['back_shiny'] ?? '',
      backShinyFemale: json['back_shiny_female'] ?? '',
      frontDefault: json['front_default'] ?? '',
      frontFemale: json['front_female'] ?? '',
      frontShiny: json['front_shiny'] ?? '',
      frontShinyFemale: json['front_shiny_female'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'back_default': backDefault,
      'back_female': backFemale,
      'back_shiny': backShiny,
      'back_shiny_female': backShinyFemale,
      'front_default': frontDefault,
      'front_female': frontFemale,
      'front_shiny': frontShiny,
      'front_shiny_female': frontShinyFemale,
    };
  }
}
