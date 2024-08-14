import 'dream_world_entity.dart';
import 'home_entity.dart';
import 'official_artwork_entity.dart';
import 'showdown_entity.dart';

class OtherSpritesEntity {
  final DreamWorldEntity? dreamWorld;
  final HomeEntity? home;
  final OfficialArtworkEntity? officialArtwork;
  final ShowdownEntity? showdown;

  OtherSpritesEntity({
    required this.dreamWorld,
    required this.home,
    required this.officialArtwork,
    required this.showdown,
  });

  factory OtherSpritesEntity.fromJson(Map<String, dynamic> json) {
    return OtherSpritesEntity(
      dreamWorld: json['dream_world'] != null ? DreamWorldEntity.fromJson(json['dream_world'] ?? {}) : null,
      home: json['home'] != null ? HomeEntity.fromJson(json['home'] as Map<String, dynamic>) : null,
      officialArtwork: json['official-artwork'] != null ? OfficialArtworkEntity.fromJson(json['official-artwork'] ?? {}) : null,
      showdown: json['showdown'] != null ? ShowdownEntity.fromJson(json['showdown'] ?? {}) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dream_world': dreamWorld?.toJson(),
      'home': home?.toJson(),
      'official-artwork': officialArtwork?.toJson(),
      'showdown': showdown?.toJson(),
    };
  }
}
