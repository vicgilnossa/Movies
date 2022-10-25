import 'dart:convert';

class Game {
  Game({
    required this.slug,
    required this.name,
    required this.playtime,
    required this.platforms,
    required this.stores,
    required this.released,
    required this.tba,
    required this.backgroundImage,
    required this.rating,
    required this.ratingTop,
    required this.ratings,
    required this.ratingsCount,
    required this.reviewsTextCount,
    required this.added,
    required this.addedByStatus,
    this.metacritic,
    required this.suggestionsCount,
    required this.updated,
    required this.id,
    required this.score,
    required this.clip,
    required this.tags,
    this.esrbRating,
    required this.userGame,
    required this.reviewsCount,
    this.saturatedColor,
    this.dominantColor,
    required this.shortScreenshots,
    required this.parentPlatforms,
    required this.genres,
    this.communityRating,
  });

  String slug;
  String name;
  int playtime;
  List<Platform> platforms;
  List<Store> stores;
  DateTime released;
  bool tba;
  String backgroundImage;
  double rating;
  int ratingTop;
  List<Rating> ratings;
  int ratingsCount;
  int reviewsTextCount;
  int added;
  AddedByStatus addedByStatus;
  int? metacritic;
  int suggestionsCount;
  DateTime updated;
  int id;
  dynamic score;
  dynamic clip;
  List<Tag> tags;
  EsrbRating? esrbRating;
  dynamic userGame;
  int reviewsCount;
  Color? saturatedColor;
  Color? dominantColor;
  List<ShortScreenshot> shortScreenshots;
  List<Platform> parentPlatforms;
  List<Genre> genres;
  int? communityRating;

  factory Game.fromJson(String str) => Game.fromMap(json.decode(str));

  factory Game.fromMap(Map<String, dynamic> json) => Game(
        slug: json["slug"],
        name: json["name"],
        playtime: json["playtime"],
        platforms: List<Platform>.from(
            json["platforms"].map((x) => Platform.fromMap(x))),
        stores: List<Store>.from(json["stores"].map((x) => Store.fromMap(x))),
        released: DateTime.parse(json["released"]),
        tba: json["tba"],
        backgroundImage: json["background_image"],
        rating: json["rating"].toDouble(),
        ratingTop: json["rating_top"],
        ratings:
            List<Rating>.from(json["ratings"].map((x) => Rating.fromMap(x))),
        ratingsCount: json["ratings_count"],
        reviewsTextCount: json["reviews_text_count"],
        added: json["added"],
        addedByStatus: AddedByStatus.fromMap(json["added_by_status"]),
        metacritic: json["metacritic"] == null ? null : json["metacritic"],
        suggestionsCount: json["suggestions_count"],
        updated: DateTime.parse(json["updated"]),
        id: json["id"],
        score: json["score"],
        clip: json["clip"],
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromMap(x))),
        esrbRating: json["esrb_rating"] == null
            ? null
            : EsrbRating.fromMap(json["esrb_rating"]),
        userGame: json["user_game"],
        reviewsCount: json["reviews_count"],
        saturatedColor: json["saturated_color"],
        dominantColor: json["dominant_color"],
        shortScreenshots: List<ShortScreenshot>.from(
            json["short_screenshots"].map((x) => ShortScreenshot.fromMap(x))),
        parentPlatforms: List<Platform>.from(
            json["parent_platforms"].map((x) => Platform.fromMap(x))),
        genres: List<Genre>.from(json["genres"].map((x) => Genre.fromMap(x))),
        communityRating:
            json["community_rating"] == null ? null : json["community_rating"],
      );
}

class AddedByStatus {
  AddedByStatus({
    required this.yet,
    required this.owned,
    required this.beaten,
    required this.toplay,
    required this.dropped,
    required this.playing,
  });

  int yet;
  int owned;
  int beaten;
  int toplay;
  int dropped;
  int playing;

  factory AddedByStatus.fromJson(String str) =>
      AddedByStatus.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddedByStatus.fromMap(Map<String, dynamic> json) => AddedByStatus(
        yet: json["yet"],
        owned: json["owned"],
        beaten: json["beaten"] == null ? null : json["beaten"],
        toplay: json["toplay"],
        dropped: json["dropped"] == null ? null : json["dropped"],
        playing: json["playing"] == null ? null : json["playing"],
      );

  Map<String, dynamic> toMap() => {
        "yet": yet,
        "owned": owned,
        "beaten": beaten == null ? null : beaten,
        "toplay": toplay,
        "dropped": dropped == null ? null : dropped,
        "playing": playing == null ? null : playing,
      };
}

enum Color { THE_0_F0_F0_F }

class EsrbRating {
  EsrbRating({
    required this.id,
    required this.name,
    required this.slug,
    required this.nameEn,
    required this.nameRu,
  });

  int id;
  String name;
  String slug;
  String nameEn;
  String nameRu;

  factory EsrbRating.fromJson(String str) =>
      EsrbRating.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EsrbRating.fromMap(Map<String, dynamic> json) => EsrbRating(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        nameEn: json["name_en"],
        nameRu: json["name_ru"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "slug": slug,
        "name_en": nameEn,
        "name_ru": nameRu,
      };
}

class Genre {
  Genre({
    required this.id,
    required this.name,
    required this.slug,
  });

  int id;
  String name;
  String slug;

  factory Genre.fromJson(String str) => Genre.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Genre.fromMap(Map<String, dynamic> json) => Genre(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "slug": slug,
      };
}

class Platform {
  Platform({
    required this.platform,
  });

  Genre platform;

  factory Platform.fromJson(String str) => Platform.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Platform.fromMap(Map<String, dynamic> json) => Platform(
        platform: Genre.fromMap(json["platform"]),
      );

  Map<String, dynamic> toMap() => {
        "platform": platform.toMap(),
      };
}

class Rating {
  Rating({
    required this.id,
    this.title,
    required this.count,
    required this.percent,
  });

  int id;
  Title? title;
  int count;
  double percent;

  factory Rating.fromJson(String str) => Rating.fromMap(json.decode(str));

  factory Rating.fromMap(Map<String, dynamic> json) => Rating(
        id: json["id"],
        title: json["title"],
        count: json["count"],
        percent: json["percent"].toDouble(),
      );
}

enum Title { RECOMMENDED, EXCEPTIONAL, MEH, SKIP }

class ShortScreenshot {
  ShortScreenshot({
    required this.id,
    required this.image,
  });

  int id;
  String image;

  factory ShortScreenshot.fromJson(String str) =>
      ShortScreenshot.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ShortScreenshot.fromMap(Map<String, dynamic> json) => ShortScreenshot(
        id: json["id"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "image": image,
      };
}

class Store {
  Store({
    required this.store,
  });

  Genre store;

  factory Store.fromJson(String str) => Store.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Store.fromMap(Map<String, dynamic> json) => Store(
        store: Genre.fromMap(json["store"]),
      );

  Map<String, dynamic> toMap() => {
        "store": store.toMap(),
      };
}

class Tag {
  Tag({
    required this.id,
    required this.name,
    required this.slug,
    required this.language,
    required this.gamesCount,
    required this.imageBackground,
  });

  int id;
  String name;
  String slug;
  Language? language;
  int gamesCount;
  String imageBackground;

  factory Tag.fromJson(String str) => Tag.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Tag.fromMap(Map<String, dynamic> json) => Tag(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        language: json["language"],
        gamesCount: json["games_count"],
        imageBackground: json["image_background"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "slug": slug,
        "language": [language],
        "games_count": gamesCount,
        "image_background": imageBackground,
      };
}

enum Language { ENG, RUS }
