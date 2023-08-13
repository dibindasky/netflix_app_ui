import 'dart:async';
import 'dart:convert';

import 'package:netflix/core/apikey/apikey.dart';
import 'package:netflix/core/url/urls.dart';
import 'package:http/http.dart' as http;
import 'package:netflix/model/download/trending_model.dart';

class DownloadApi {
  Url url = Url();
  Api api = Api();
  Future<List<String>?> getDownloadImages() async {
    String apiUrl = url.baseUrl + url.nowPlaying + api.apiKey;
    final response = await http.get(Uri.parse(apiUrl));
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    TrendingApiModel tModel = TrendingApiModel.fromJson(json);
    return <String>[
      url.baseImageUrl + tModel.result![3].posterPath!,
      url.baseImageUrl + tModel.result![6].posterPath!,
      url.baseImageUrl + tModel.result![8].posterPath!
    ];
  }
    Future<List<TrendingModel>> getTrendingModels() async {
    List<TrendingModel> array = [];
    String apiUrl = url.baseUrl + url.upComing + api.apiKey;
    final response = await http.get(Uri.parse(apiUrl));
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      array = TrendingModel.toListTrendingModel(json['results']);
      return array;
  }
}
