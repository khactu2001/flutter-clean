import 'dart:developer';

import 'package:flutter_application_1/src/features/articles/data/data_source/remote/article_api_service.dart';
import 'package:flutter_application_1/src/features/articles/data/models/article.dart';
import 'package:flutter_application_1/src/features/articles/domain/repository/article_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
@singleton
class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleApiService _articleApiService;

  ArticleRepositoryImpl(this._articleApiService);
  @override
  Future<List<Article>> getArticles({int? page, int? limit}) async {
    final result = await _articleApiService.getArticles(
      page: page,
      limit: limit,
    );

    inspect(result);

    return result;
  }
}
