import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:structure_flutter/component/models/newsmodel.dart';

class NewApiServices {
  static const String _apiKey = "156ab4e585e1461d861b156080f53581";
  static const String _url = "/v2/everything?q=keyword&apiKey=$_apiKey";
  Dio? _dio;
  late Response response;

  NewApiServices() {
    _dio = Dio();
  }

  Future<List<Article>?> fetchNews() async {
    try {
      Response? response = await _dio?.get(_url);
      Newsmodel? newsModel = Newsmodel.fromJson(response?.data);
      return newsModel.articles;
    } on DioError catch (e) {
      debugPrint(e.toString());
    }
    return response.data;
  }

  Future callDummyApi() async {
    response = await _dio!.get(
      _url,
      options: Options(contentType: Headers.jsonContentType, headers: {
        "Accept": "application/json",
      }),
    );
    return response.data;
  }
}
