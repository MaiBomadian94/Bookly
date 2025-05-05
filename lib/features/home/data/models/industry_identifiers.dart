class IndustryIdentifiers {
  String? type;
  String? identifier;

  IndustryIdentifiers({
    this.type,
    this.identifier,
  });

  factory IndustryIdentifiers.fromJson(dynamic json) {
    return IndustryIdentifiers(
      type: json['type'],
      identifier: json['identifier'],
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['identifier'] = identifier;
    return map;
  }
}
