// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'src/core/resources/dio_module.dart' as _i133;
import 'src/features/articles/data/data_source/remote/article_api_service.dart'
    as _i243;
import 'src/features/articles/data/repository/article_repository_iml.dart'
    as _i930;
import 'src/features/articles/domain/usecases/get_article_usecase.dart' as _i77;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.lazySingleton<_i361.Dio>(() => dioModule.dio());
    gh.factory<_i243.ArticleApiService>(
        () => _i243.ArticleApiService(gh<_i361.Dio>()));
    gh.factory<_i930.ArticleRepositoryImpl>(
        () => _i930.ArticleRepositoryImpl(gh<_i243.ArticleApiService>()));
    gh.factory<_i77.GetArticleUsecase>(
        () => _i77.GetArticleUsecase(gh<_i930.ArticleRepositoryImpl>()));
    return this;
  }
}

class _$DioModule extends _i133.DioModule {}
