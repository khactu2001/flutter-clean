import 'package:flutter_application_1/src/features/articles/data/models/article.dart';

abstract class ArticleRepository {
  Future<List<Article>> getArticles({int? page, int? limit});
}
