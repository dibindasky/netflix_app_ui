import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:netflix/model/news_and_hot/everyone_watching_model.dart';

import '../../core/apikey/apikey.dart';
import '../../core/url/urls.dart';

class EveryoneWatchingApi{

  Url url = Url();
  Api api = Api();
  Future<List<TrendingWatchingModel>> getTrendingWatching() async {
    List<TrendingWatchingModel> array = [];
    String apiUrl = url.baseUrl + url.nowPlaying + api.apiKey;
    final response = await http.get(Uri.parse(apiUrl));
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      array = TrendingWatchingModel.toListTrendingModel(json['results']);
      return array;
  }
}