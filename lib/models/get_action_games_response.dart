// To parse this JSON data, do
//
//     final getActionGamesResponse = getActionGamesResponseFromMap(jsonString);

import 'dart:convert';

import 'package:flutter_application_3/models/game.dart';

class GetActionGamesResponse {
    GetActionGamesResponse({
        required this.count,
        required this.next,
        this.previous,
        required this.results,
        required this.userPlatforms,
    });

    int count;
    String next;
    dynamic previous;
    List<Game> results;
    bool userPlatforms;

    factory GetActionGamesResponse.fromJson(String str) => GetActionGamesResponse.fromMap(json.decode(str));

    factory GetActionGamesResponse.fromMap(Map<String, dynamic> json) => GetActionGamesResponse(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<Game>.from(json["results"].map((x) => Game.fromMap(x))),
        userPlatforms: json["user_platforms"],
    );
}

