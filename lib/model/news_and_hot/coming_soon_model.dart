class ComingSoonModel {
  int? page;
  List<UpComingModel>? result;
  int? totalPages;
  int? totalResult;

  ComingSoonModel({this.page, this.result, this.totalPages, this.totalResult});

  ComingSoonModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    result = <UpComingModel>[];
    totalPages = json['total_pages'];
    totalResult = json['total_results'];
    if (json['results'] != null) {
      json['results'].forEach((v) {
        result!.add(UpComingModel.fromJson(v  as Map<String,dynamic>));
      });
    }
  }
}

class UpComingModel {
  bool? adult;
  String? backgroundPath;
  int? id;
  String? title;
  String? overview;
  String? posterPath;
  String? mediaType;
  String? releaseDate;

  UpComingModel({
    this.adult,
    this.backgroundPath,
    this.id,
    this.title,
    this.overview,
    this.posterPath,
    this.mediaType,
    this.releaseDate,
  });

  UpComingModel.fromJson(Map<String, dynamic> json) {
    adult = json['adult'] as bool;
    backgroundPath = json['backdrop_path'];
    id = json['id'] as int;
    title = json['title'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    mediaType = json['media_type'];
    releaseDate = json['release_date'];
  }

  static List<UpComingModel> toListTrendingModel(List<dynamic> jsonList){
    return jsonList.map((e) => UpComingModel.fromJson(e)).toList();
  }
}
