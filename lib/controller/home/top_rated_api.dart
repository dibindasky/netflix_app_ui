import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/model/home/top_rated_model.dart';
import '../../core/apikey/apikey.dart';
import '../../core/url/urls.dart';

class TopRatedApi {
  Url url = Url();
  Api api = Api();
  Future<List<TopRatedModel>> getTopRated() async {
    List<TopRatedModel> array = [];
    String apiUrl = url.baseUrl + url.topRated + api.apiKey;
    final response = await http.get(Uri.parse(apiUrl));
    // if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      // TrendingApiModel tModel = TrendingApiModel.fromJson(json);
      array = TopRatedModel.toListTrendingModel(json['results']);
      print(array.length);
      print(json);
    print(apiUrl);
      return array;
    // }
    // return null;
  }
}
