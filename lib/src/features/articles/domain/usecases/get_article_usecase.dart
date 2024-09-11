import 'dart:developer';

import 'package:flutter_application_1/src/core/usecase/usecase.dart';
import 'package:flutter_application_1/src/features/articles/data/models/article.dart';
import 'package:flutter_application_1/src/features/articles/data/repository/article_repository_iml.dart';
import 'package:injectable/injectable.dart';

class GetArticleParams {
  final int? page;
  final int? limit;

  GetArticleParams({this.page, this.limit});
}

@injectable
class GetArticleUsecase implements Usecase<List<Article>, GetArticleParams> {
  final ArticleRepositoryImpl _articleRepositoryImpl;
  GetArticleUsecase(this._articleRepositoryImpl);

  @override
  Future<List<Article>> call({GetArticleParams? params}) async {
    final res = await _articleRepositoryImpl.getArticles(
        page: params?.page, limit: params?.limit);
    inspect(res);
    return res;
  }
}
