enum ApiPath {
  login,
  news,
}

class APIPathHelper {
  static String getValue(ApiPath path) {
    switch (path) {
      case ApiPath.login:
        return "/api/login";
      default:
        return "";
    }
  }

  static String getNews(ApiPath path) {
    String apiKey = "156ab4e585e1461d861b156080f53581";
    switch (path) {
      case ApiPath.news:
        return "/v2/everything?q=keyword&apiKey=$apiKey";
      default:
        return "";
    }
  }
}
