import 'package:flutter/foundation.dart';

const String kBaseURL = 'https://newsapi.org'; // your domains

const int kConnectTimeout = 50000;
const int kReceiveTimeout = 60000;

class ApiBase {
  static String get baseURL {
    if (kReleaseMode) {
      return kBaseURL;
    } else {
      return kBaseURL;
    }
  }
}
