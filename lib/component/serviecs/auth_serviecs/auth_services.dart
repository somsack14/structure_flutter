import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:structure_flutter/component/utils/api_base.dart';
import 'package:structure_flutter/component/utils/api_path.dart';

class AuthServices {
  late Response response;
  late Dio? _dio;

  AuthServices() {
    BaseOptions options = BaseOptions(
      baseUrl: ApiBase.baseURL,
      connectTimeout: kConnectTimeout,
      receiveTimeout: kReceiveTimeout,
    );
    _dio = Dio(options);
  }

  Future login({phone, otp, fcmToken}) async {
    var uri = APIPathHelper.getValue(ApiPath.login);
    Map data = {"phone": phone, "otp": otp, "device_name": fcmToken};
    response = await _dio!.post(
      uri,
      data: data,
      options: Options(contentType: Headers.jsonContentType, headers: {
        "Accept": "application/json",
      }),
    );
    return response.data;
  }
}
