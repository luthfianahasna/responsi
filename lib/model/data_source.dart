import '../base_network.dart';

class NewsDataSource {
  static NewsDataSource instance = NewsDataSource();

  Future<Map<String, dynamic>> loadArticles() {
    return BaseNetwork.get("articles");
  }

  Future<Map<String, dynamic>> loadDetailArticles(int idDiterima){
    String id = idDiterima.toString();
    return BaseNetwork.get("articles/$id");
  }
}

class BlogDataSource {
  static BlogDataSource instance = BlogDataSource();

  Future<Map<String, dynamic>> loadBlogs() {
    return BaseNetwork.get("blogs");
  }

  Future<Map<String, dynamic>> loadDetailBlogs(int idDiterima){
    String id = idDiterima.toString();
    return BaseNetwork.get("blogs/$id");
  }
}

class ReportsDataSource {
  static ReportsDataSource instance = ReportsDataSource();

  Future<Map<String, dynamic>> loadReports() {
    return BaseNetwork.get("reports");
  }

  Future<Map<String, dynamic>> loadDetailReports(int idDiterima){
    String id = idDiterima.toString();
    return BaseNetwork.get("reports/$id");
  }
}