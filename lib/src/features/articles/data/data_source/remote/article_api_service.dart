import 'package:dio/dio.dart';
import 'package:flutter_application_1/src/core/constants/constants.dart';
import 'package:flutter_application_1/src/features/articles/data/models/article.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'article_api_service.g.dart';

@RestApi(baseUrl: apiUrl)
@injectable
abstract class ArticleApiService {
  @factoryMethod
  factory ArticleApiService(Dio dio) = _ArticleApiService;

  @GET(UrlConstants.todos)
  Future<List<Article>> getArticles({
    @Query('_page') int? page,
    @Query('_per_page') int? limit,
  });
}
