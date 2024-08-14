import 'package:flutter/material.dart';
import 'package:pokedex_test/shared/assets/assets.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.isSearching,
    required this.controller,
    this.onChanged,
  });

  final bool isSearching;
  final TextEditingController controller;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isSearching,
      replacement: Image.asset(Assets.pokemonLogo, height: 50, fit: BoxFit.cover),
      child: TextFormField(
        controller: controller,
        decoration: const InputDecoration(hintText: 'Pokedex Search...', border: InputBorder.none),
        autofocus: true,
        onChanged: (v) => onChanged!(v),
      ),
    );
  }
}
