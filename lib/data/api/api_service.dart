import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/article.dart';

class ApiService {
  static final String _baseUrl = 'https://newsapi.org/v2/';
  static final String _apiKey = '25f52d43081a4e3bbad96363cd4ac42a';
  static final String _category = 'business';
  static final String _country = 'id';

  Future<ArticlesResult> topHeadlines() async {
    final response = await http.get(Uri.parse(_baseUrl +
        "top-headlines?country=$_country&category=$_category&apiKey=$_apiKey"));
    if(response.statusCode == 200) {
      return ArticlesResult.fromJson(json.decode(response.body));
    }else{
      throw Exception('Failed to load top headlines');
    }
  }
}
