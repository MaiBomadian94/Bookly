class Pdf {
  bool? isAvailable;
  String? acsTokenLink;

  Pdf({
    this.isAvailable,
    this.acsTokenLink,
  });

  factory Pdf.fromJson(dynamic json) {
    return Pdf(
      isAvailable: json['isAvailable'],
      acsTokenLink: json['acsTokenLink'],
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    map['acsTokenLink'] = acsTokenLink;
    return map;
  }
}
