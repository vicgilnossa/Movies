import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/models.dart';
import 'package:flutter_application_3/models/popular_response.dart';
import 'package:http/http.dart' as http;

class MusicProvider extends ChangeNotifier {
  String _baseUrl = "api.discogs.com";
  String _query = "Nirvana";
  String _key = "bazwfDkgLoevFRtoECCx";
  String _secret = "dzkXsEfyPgEfOnnomeEdKgWqGWtEiyMj";
  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];
  MusicProvider() {
    print("Music Provider inicializado");
    getNirvanaAlbums();
  }

  getNirvanaAlbums() async {
    var url = Uri.https(_baseUrl, 'database/search',
        {'q': _query, 'key': _key, 'secret': _secret, 'page': "1"});

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    final nowPlayingResponse =
        NowPlayingReleaseResponse.fromJson(response.body);

    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }
}
