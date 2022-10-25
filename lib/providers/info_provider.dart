import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/models.dart';
import 'package:flutter_application_3/models/popular_response.dart';
import 'package:flutter_application_3/models/search_movie_response.dart';
import 'package:http/http.dart' as http;

class InfoProvider extends ChangeNotifier {
  String _baseUrl = "api.themoviedb.org";
  String _apiKey = "a178b02a97855cc5b1bb2dcca02177ae";
  String _language = "es-Es";
  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];
  final movieDetails = {};
  //Map<int, List<DetailsResponse>> movieDetails = {};
  int popularPage = 0;
  InfoProvider() {
    print("Info Provider inicializado");
    getOnDisplayMovies();
    getPopularMovies();
  }

  Future<String> getJsonData(String endpoint, [int page = 1]) async {
    var url = Uri.https(_baseUrl, endpoint,
        {'api_key': _apiKey, 'language': _language, 'page': "$page"});

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    return response.body;
  }

  getOnDisplayMovies() async {
    final jsonData = await getJsonData('3/movie/now_playing');
    final nowPlayingResponse = NowPlayingReleaseResponse.fromJson(jsonData);

    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }

  getPopularMovies() async {
    popularPage++;
    final jsonData = await getJsonData('3/movie/popular', popularPage);

    // Await the http get response, then decode the json-formatted response.

    final popularResponse = PopularResponse.fromJson(jsonData);

    popularMovies = [...popularMovies, ...popularResponse.results];
    print(popularMovies[0]);
    notifyListeners();
  }

  getMovieDetails(int movieId) async {
    print("Pidiendo info de la movie");
    final jsonData = await getJsonData('3/movie/$movieId');
    final detailsResponse = DetailsResponse.fromJson(jsonData);
    movieDetails[movieId] = detailsResponse;
    return detailsResponse;
  }

  Future<List<Movie>> searchMovies(String query) async {
    final url = Uri.https(_baseUrl, '3/search/movie',
        {'api_key': _apiKey, 'language': _language, 'query': query});

    final response = await http.get(url);
    final searchResponse = SearchMovieResponse.fromJson(response.body);

    return searchResponse.results;
  }
}
