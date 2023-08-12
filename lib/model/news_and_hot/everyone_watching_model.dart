class EveryoneWatching {
  int? page;
  List<TrendingWatchingModel>? result;
  int? totalPages;
  int? totalResult;

  EveryoneWatching({this.page, this.result, this.totalPages, this.totalResult});

  EveryoneWatching.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    result = <TrendingWatchingModel>[];
    totalPages = json['total_pages'];
    totalResult = json['total_results'];
    if (json['results'] != null) {
      json['results'].forEach((v) {
        result!.add(TrendingWatchingModel.fromJson(v  as Map<String,dynamic>));
      });
    }
  }
}

class TrendingWatchingModel {
  bool? adult;
  String? backgroundPath;
  int? id;
  String? title;
  String? overview;
  String? posterPath;
  String? mediaType;

  TrendingWatchingModel({
    this.adult,
    this.backgroundPath,
    this.id,
    this.title,
    this.overview,
    this.posterPath,
    this.mediaType,
  });

  TrendingWatchingModel.fromJson(Map<String, dynamic> json) {
    adult = json['adult'] as bool;
    backgroundPath = json['backdrop_path'];
    id = json['id'] as int;
    title = json['title'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    mediaType = json['media_type'];
  }

  static List<TrendingWatchingModel> toListTrendingModel(List<dynamic> jsonList){
    return jsonList.map((e) => TrendingWatchingModel.fromJson(e)).toList();
  }
}
