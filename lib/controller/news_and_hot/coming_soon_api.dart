import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:netflix/model/news_and_hot/coming_soon_model.dart';

import '../../core/apikey/apikey.dart';
import '../../core/url/urls.dart';

class ComingSoonApi{

  Url url = Url();
  Api api = Api();
  Future<List<UpComingModel>> getUpComing() async {
    List<UpComingModel> array = [];
    String apiUrl = url.baseUrl + url.upComing + api.apiKey;
    final response = await http.get(Uri.parse(apiUrl));
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      array = UpComingModel.toListTrendingModel(json['results']);
      return array;
  }
}