import 'package:flutter/material.dart';

import '../../shared/assets/pokeicon_icons.dart';

enum PokemonType {
  grass(TagEntity(name: "grass", color: Color(0xff1B932C), icon: Pokeicon.grass)),
  poison(TagEntity(name: "poison", color: Color(0xff8849B0), icon: Pokeicon.poison)),
  fire(TagEntity(name: "fire", color: Color(0xffF10A34), icon: Pokeicon.fire)),
  flying(TagEntity(name: "flying", color: Color(0xff9EC4DD), icon: Pokeicon.flying)),
  water(TagEntity(name: "water", color: Color(0xff265DFC), icon: Pokeicon.water)),
  normal(TagEntity(name: "normal", color: Color(0xff7D3600), icon: Pokeicon.normal)),
  electric(TagEntity(name: "electric", color: Color(0xffF8A801), icon: Pokeicon.electric)),
  ground(TagEntity(name: "ground", color: Color(0xff673E2C), icon: Pokeicon.ground)),
  fairy(TagEntity(name: "fairy", color: Color(0xffFF48CC), icon: Pokeicon.fairy)),
  bug(TagEntity(name: "bug", color: Color(0xff54DC44), icon: Pokeicon.bug)),
  fighting(TagEntity(name: "fighting", color: Color(0xff0F0905), icon: Pokeicon.fighting)),
  psychic(TagEntity(name: "psychic", color: Color(0xff6114BC), icon: Pokeicon.psychic)),
  rock(TagEntity(name: "rock", color: Color(0xff54473D), icon: Pokeicon.rock)),
  steel(TagEntity(name: "steel", color: Color(0xff5D666E), icon: Pokeicon.steel)),
  ice(TagEntity(name: "ice", color: Color(0xff8FC3E9), icon: Pokeicon.ice)),
  ghost(TagEntity(name: "ghost", color: Color(0xff8A8886), icon: Pokeicon.ghost)),
  dark(TagEntity(name: "dark", color: Color(0xff040534), icon: Pokeicon.dark)),
  dragon(TagEntity(name: "dragon", color: Color(0xff0804B4), icon: Pokeicon.dragon));

  final TagEntity tag;
  const PokemonType(this.tag);
}

class TagEntity {
  final String name;
  final Color color;
  final IconData icon;

  const TagEntity({
    required this.name,
    required this.color,
    required this.icon,
  });
}
