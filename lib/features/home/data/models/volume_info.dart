import 'industry_identifiers.dart';
import 'reading_modes.dart';
import 'panelization_summary.dart';
import 'image_links.dart';

class VolumeInfo {
  VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    required this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  // VolumeInfo.fromJson(dynamic json) {
  //   imageLinks=ImageLinks.fromJson(json['imageLinks'] ?? {});
  //   title = json['title'];
  //   authors = (json['authors'] as List<dynamic>?)?.cast<String>();
  //   // authors = json['authors'] != null ? json['authors'].cast<String>() : [];
  //   publisher = json['publisher'];
  //   publishedDate = json['publishedDate'];
  //   description = json['description'];
  //   if (json['industryIdentifiers'] != null) {
  //     industryIdentifiers = [];
  //     json['industryIdentifiers'].forEach((v) {
  //       industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
  //     });
  //   }
  //   readingModes = json['readingModes'] != null
  //       ? ReadingModes.fromJson(json['readingModes'])
  //       : null;
  //   pageCount = json['pageCount'];
  //   printType = json['printType'];
  //   categories =
  //       json['categories'] != null ? json['categories'].cast<String>() : [];
  //   maturityRating = json['maturityRating'];
  //   allowAnonLogging = json['allowAnonLogging'];
  //   contentVersion = json['contentVersion'];
  //   panelizationSummary = json['panelizationSummary'] != null
  //       ? PanelizationSummary.fromJson(json['panelizationSummary'])
  //       : null;
  //   language = json['language'];
  //   previewLink = json['previewLink'];
  //   infoLink = json['infoLink'];
  //   canonicalVolumeLink = json['canonicalVolumeLink'];
  // }

  factory VolumeInfo.fromJson(dynamic json) {
    return VolumeInfo(
      imageLinks: ImageLinks.fromJson(json['imageLinks']),
      title: json['title'],
      authors: (json['authors'] as List<dynamic>?)?.cast<String>(),
      publisher: json['publisher'],
      publishedDate: json['publishedDate'],
      description: json['description'],
      industryIdentifiers: json['industryIdentifiers'] != null
          ? (json['industryIdentifiers'] as List<dynamic>)
              .map((e) => IndustryIdentifiers.fromJson(e))
              .toList()
          : null,
      readingModes: json['readingModes'] != null
          ? ReadingModes.fromJson(json['readingModes'])
          : null,
      pageCount: json['pageCount'],
      printType: json['printType'],
      categories: json['categories'] != null
          ? (json['categories'] as List<dynamic>).cast<String>()
          : [],
      maturityRating: json['maturityRating'],
      allowAnonLogging: json['allowAnonLogging'],
      contentVersion: json['contentVersion'],
      panelizationSummary: json['panelizationSummary'] != null
          ? PanelizationSummary.fromJson(json['panelizationSummary'])
          : null,
      language: json['language'],
      previewLink: json['previewLink'],
      infoLink: json['infoLink'],
      canonicalVolumeLink: json['canonicalVolumeLink'],
    );
  }

  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  num? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['authors'] = authors;
    map['publisher'] = publisher;
    map['publishedDate'] = publishedDate;
    map['description'] = description;
    if (industryIdentifiers != null) {
      map['industryIdentifiers'] =
          industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (readingModes != null) {
      map['readingModes'] = readingModes?.toJson();
    }
    map['pageCount'] = pageCount;
    map['printType'] = printType;
    map['categories'] = categories;
    map['maturityRating'] = maturityRating;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary?.toJson();
    }
    map['imageLinks'] = imageLinks?.toJson();
    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }
}
