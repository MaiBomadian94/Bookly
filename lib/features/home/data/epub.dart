class Epub {
  bool? isAvailable;

  Epub({
    this.isAvailable,
  });

  factory Epub.fromJson(dynamic json) {
    return Epub(
      isAvailable: json['isAvailable'],
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    return map;
  }
}
