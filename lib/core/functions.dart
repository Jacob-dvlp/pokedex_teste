String extractPokemonId(String url) {
  final RegExp regex = RegExp(r'\/(\d+)\/$');
  final Match? match = regex.firstMatch(url);
  if (match != null) {
    return match.group(1)!;
  } else {
    throw const FormatException('No number found in URL');
  }
}
