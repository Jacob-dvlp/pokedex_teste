abstract class DetailEntity {
  String get name;
  String get url;

  DetailEntity();

  factory DetailEntity.fromJson(Map<String, dynamic> json) {
    return _DetailEntityImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }

  Map<String, dynamic> toJson();
}

class _DetailEntityImpl extends DetailEntity {
  @override
  final String name;
  @override
  final String url;

  _DetailEntityImpl({
    required this.name,
    required this.url,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}
