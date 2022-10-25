// To parse this JSON data, do
//
//     final nowPlayingReleaseResponse = nowPlayingReleaseResponseFromMap(jsonString);

import 'dart:convert';

import 'package:flutter_application_3/models/models.dart';

class NowPlayingReleaseResponse {
  NowPlayingReleaseResponse({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalresults,
  });

  Dates dates;
  int page;
  List<Movie> results;
  int totalPages;
  int totalresults;

  factory NowPlayingReleaseResponse.fromJson(String str) =>
      NowPlayingReleaseResponse.fromMap(json.decode(str));

  factory NowPlayingReleaseResponse.fromMap(Map<String, dynamic> json) =>
      NowPlayingReleaseResponse(
        dates: Dates.fromMap(json["dates"]),
        page: json["page"],
        results: List<Movie>.from(json["results"].map((x) => Movie.fromMap(x))),
        totalPages: json["total_pages"],
        totalresults: json["total_results"],
      );
}

class Dates {
  Dates({
    required this.maximum,
    required this.minimum,
  });

  DateTime maximum;
  DateTime minimum;

  factory Dates.fromJson(String str) => Dates.fromMap(json.decode(str));

  factory Dates.fromMap(Map<String, dynamic> json) => Dates(
        maximum: DateTime.parse(json["maximum"]),
        minimum: DateTime.parse(json["minimum"]),
      );
}

