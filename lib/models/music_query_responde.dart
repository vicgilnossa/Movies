// To parse this JSON data, do
//
//     final musicSearchResponse = musicSearchResponseFromMap(jsonString);

import 'dart:convert';

class MusicSearchResponse {
  MusicSearchResponse({
    required this.pagination,
    required this.results,
  });

  Pagination pagination;
  List<Result> results;

  factory MusicSearchResponse.fromJson(String str) =>
      MusicSearchResponse.fromMap(json.decode(str));

  factory MusicSearchResponse.fromMap(Map<String, dynamic> json) =>
      MusicSearchResponse(
        pagination: Pagination.fromMap(json["pagination"]),
        results:
            List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
      );
}

class Pagination {
  Pagination({
    required this.page,
    required this.pages,
    required this.perPage,
    required this.items,
    required this.urls,
  });

  int page;
  int pages;
  int perPage;
  int items;
  Urls urls;

  factory Pagination.fromJson(String str) =>
      Pagination.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Pagination.fromMap(Map<String, dynamic> json) => Pagination(
        page: json["page"],
        pages: json["pages"],
        perPage: json["per_page"],
        items: json["items"],
        urls: Urls.fromMap(json["urls"]),
      );

  Map<String, dynamic> toMap() => {
        "page": page,
        "pages": pages,
        "per_page": perPage,
        "items": items,
        "urls": urls.toMap(),
      };
}

class Urls {
  Urls({
    required this.last,
    required this.next,
  });

  String last;
  String next;

  factory Urls.fromJson(String str) => Urls.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Urls.fromMap(Map<String, dynamic> json) => Urls(
        last: json["last"],
        next: json["next"],
      );

  Map<String, dynamic> toMap() => {
        "last": last,
        "next": next,
      };
}

class Result {
  Result({
    required this.id,
    required this.type,
    required this.masterId,
    required this.masterUrl,
    required this.uri,
    required this.title,
    required this.thumb,
    required this.coverImage,
    required this.resourceUrl,
    required this.country,
    required this.year,
    required this.format,
    required this.label,
    required this.genre,
    required this.style,
    required this.barcode,
    required this.catno,
    required this.community,
    required this.formatQuantity,
    required this.formats,
  });

  int id;
  String? type;
  int masterId;
  String masterUrl;
  String uri;
  String title;
  String thumb;
  String coverImage;
  String resourceUrl;
  String country;
  String year;
  List<String> format;
  List<String> label;
  List<String> genre;
  List<String> style;
  List<String> barcode;
  String catno;
  Community community;
  int formatQuantity;
  List<Format> formats;

  factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

  factory Result.fromMap(Map<String, dynamic> json) => Result(
      id: json["id"],
      type: json["type"],
      masterId: json["master_id"] == null ? null : json["master_id"],
      masterUrl: json["master_url"] == null ? null : json["master_url"],
      uri: json["uri"],
      title: json["title"],
      thumb: json["thumb"],
      coverImage: json["cover_image"],
      resourceUrl: json["resource_url"],
      country: json["country"] == null ? null : json["country"],
      year: json["year"] == null ? null : json["year"],
      format: json["format"],
      label: json["label"],
      genre: json["genre"],
      style: json["style"],
      barcode: json["barcode"],
      catno: json["catno"] == null ? null : json["catno"],
      community: json["community"],
      formatQuantity: json["format_quantity"],
      formats: json["formats"]);
}

class Community {
  Community({
    required this.want,
    required this.have,
  });

  int want;
  int have;

  factory Community.fromJson(String str) => Community.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Community.fromMap(Map<String, dynamic> json) => Community(
        want: json["want"],
        have: json["have"],
      );

  Map<String, dynamic> toMap() => {
        "want": want,
        "have": have,
      };
}

class Format {
  Format({
    required this.name,
    required this.qty,
    required this.text,
    required this.descriptions,
  });

  String name;
  String qty;
  String text;
  List<String> descriptions;

  factory Format.fromJson(String str) => Format.fromMap(json.decode(str));

  factory Format.fromMap(Map<String, dynamic> json) => Format(
        name: json["name"],
        qty: json["qty"],
        text: json["text"] == null ? null : json["text"],
        descriptions: List<String>.from(json["descriptions"].map((x) => x)),
      );
}
