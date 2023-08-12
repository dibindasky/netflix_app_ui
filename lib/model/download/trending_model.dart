class TrendingApiModel {
  int? page;
  List<TrendingModel>? result;
  int? totalPages;
  int? totalResult;

  TrendingApiModel({this.page, this.result, this.totalPages, this.totalResult});

  TrendingApiModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    result = <TrendingModel>[];
    totalPages = json['total_pages'];
    totalResult = json['total_results'];
    if (json['results'] != null) {
      json['results'].forEach((v) {
        result!.add(TrendingModel.fromJson(v  as Map<String,dynamic>));
      });
    }
  }
}

class TrendingModel {
  bool? adult;
  String? backgroundPath;
  int? id;
  String? title;
  String? overview;
  String? posterPath;
  String? mediaType;

  TrendingModel({
    this.adult,
    this.backgroundPath,
    this.id,
    this.title,
    this.overview,
    this.posterPath,
    this.mediaType,
  });

  TrendingModel.fromJson(Map<String, dynamic> json) {
    adult = json['adult'] as bool;
    backgroundPath = json['backdrop_path'];
    id = json['id'] as int;
    title = json['title'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    mediaType = json['media_type'];
  }

  static List<TrendingModel> toListTrendingModel(List<dynamic> jsonList){
    return jsonList.map((e) => TrendingModel.fromJson(e)).toList();
  }
}
