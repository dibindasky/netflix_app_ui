class TopRatedModel {
  bool? adult;
  String? backgroundPath;
  int? id;
  String? title;
  String? overview;
  String? posterPath;
  String? mediaType;
  String? releaseDate;

  TopRatedModel({
    this.adult,
    this.backgroundPath,
    this.id,
    this.title,
    this.overview,
    this.posterPath,
    this.mediaType,
    this.releaseDate,
  });

  TopRatedModel.fromJson(Map<String, dynamic> json) {
    adult = json['adult'] as bool;
    backgroundPath = json['backdrop_path'];
    id = json['id'] as int;
    title = json['title'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    mediaType = json['media_type'];
    releaseDate = json['release_date'];
  }

  static List<TopRatedModel> toListTrendingModel(List<dynamic> jsonList){
    return jsonList.map((e) => TopRatedModel.fromJson(e)).toList();
  }
}
