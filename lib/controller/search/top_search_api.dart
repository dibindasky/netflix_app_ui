import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../core/apikey/apikey.dart';
import '../../core/url/urls.dart';
import '../../model/download/trending_model.dart';

class TopSearchApi {
  Url url = Url();
  Api api = Api();
  Future<List<TrendingModel>> getTopSearches() async {
    List<TrendingModel> array = [];
    String apiUrl = url.baseUrl + url.trending + api.apiKey;
    final response = await http.get(Uri.parse(apiUrl));
    // if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      // TrendingApiModel tModel = TrendingApiModel.fromJson(json);
      array = TrendingModel.toListTrendingModel(json['results']);
      print(array.length);
      print(json);
    print(apiUrl);
      return array;
    // }
    // return null;
  }
}
