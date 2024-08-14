import 'dart:convert';

class MoveEntity {
  String name;
  String url;
  String typeName;
  MoveEntity({
    this.name = '',
    this.url = '',
    this.typeName = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'url': url,
      'typeName': typeName,
    };
  }

  factory MoveEntity.fromMap(Map<String, dynamic> map) {
    return MoveEntity(
      name: map['move'] != null ? map['move']['name'] : "",
      url: map['move'] != null ? map['move']['url'] : "",
      typeName: map['type'] != null ? map['type']['name'] : "",
    );
  }

  String toJson() => json.encode(toMap());

  factory MoveEntity.fromJson(String source) => MoveEntity.fromMap(json.decode(source));
}
