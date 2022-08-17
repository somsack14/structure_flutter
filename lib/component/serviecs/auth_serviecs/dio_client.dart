import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:structure_flutter/component/models/newsmodel.dart';
import 'package:structure_flutter/component/utils/api_base.dart';

import '../../models/user.dart';
import '../../models/user_info.dart';
import 'logging.dart';

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://newsapi.org',
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ),
  )..interceptors.add(Logging());

  Future<User?> getData({required String id}) async {
    User? user;

    try {
      Response userData = await _dio.get('/users/$id');

      debugPrint('User Info: ${userData.data}');

      user = User.fromJson(userData.data);
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        debugPrint('Dio error!');
        debugPrint('STATUS: ${e.response?.statusCode}');
        debugPrint('DATA: ${e.response?.data}');
        debugPrint('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        debugPrint('Error sending request!');
        debugPrint(e.message);
      }
    }

    return user;
  }

  Future<Newsmodel?> getNews() async {
    Newsmodel? news;

    try {
      Response newsData = await _dio.get('/v2/top-headlines?sources=techcrunch&apiKey=156ab4e585e1461d861b156080f53581');

      debugPrint('News Info: ${newsData.data}');

      news = Newsmodel.fromJson(newsData.data);
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        debugPrint('Dio error!');
        debugPrint('STATUS: ${e.response?.statusCode}');
        debugPrint('DATA: ${e.response?.data}');
        debugPrint('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        debugPrint('Error sending request!');
        debugPrint(e.message);
      }
    }

    return news;
  }

  Future<UserInfo?> createUser({required UserInfo userInfo}) async {
    UserInfo? retrievedUser;

    try {
      Response response = await _dio.post(
        '/users',
        data: {
          userInfo.id,
          userInfo.name,
          userInfo.job,
          userInfo.createdAt,
        },
      );

      debugPrint('User created: ${response.data}');

      retrievedUser = UserInfo.fromJson(response.data);
    } catch (e) {
      debugPrint('Error creating user: $e');
    }

    return retrievedUser;
  }

  Future<UserInfo?> updateUser({
    required UserInfo userInfo,
    required String id,
  }) async {
    UserInfo? updatedUser;

    try {
      Response response = await _dio.put(
        '/users/$id',
        data: {
          userInfo.id,
          userInfo.name,
          userInfo.job,
          userInfo.createdAt,
        },
      );

      debugPrint('User updated: ${response.data}');

      updatedUser = UserInfo.fromJson(response.data);
    } catch (e) {
      debugPrint('Error updating user: $e');
    }

    return updatedUser;
  }

  Future<void> deleteUser({required String id}) async {
    try {
      await _dio.delete('/users/$id');
      debugPrint('User deleted!');
    } catch (e) {
      debugPrint('Error deleting user: $e');
    }
  }
}
