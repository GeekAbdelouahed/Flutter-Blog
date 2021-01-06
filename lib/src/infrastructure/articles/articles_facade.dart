import 'package:Blog/src/domain/entities/article/article.dart';
import 'package:Blog/src/domain/entities/category/category.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/articles/i_articles_facade.dart';
import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';
import '../../injection.dart';
import '../core/network/network.dart';

@LazySingleton(as: IArticlesFacade)
class ArticlesFacade implements IArticlesFacade {
  @override
  Future<Either<ApiError, ApiResponse<List<Category>>>> getCategories() async {
    try {
      final apiResponse = await getIt<AppNetworkClient>().getCategories();
      if (apiResponse.status) {
        return right(apiResponse);
      } else {
        return left(
          ApiError(message: apiResponse.message),
        );
      }
    } catch (e) {
      return left(
        ApiError(message: '$e'),
      );
    }
  }

  @override
  Future<Either<ApiError, ApiResponse<List<Article>>>> getArticles() async {
    try {
      final apiResponse = await getIt<AppNetworkClient>().getArticles();
      if (apiResponse.status) {
        return right(apiResponse);
      } else {
        return left(
          ApiError(message: apiResponse.message),
        );
      }
    } catch (e) {
      return left(
        ApiError(message: '$e'),
      );
    }
  }

  @override
  Future<Either<ApiError, ApiResponse<List<Article>>>> getArticlesByCategory(
      categoryId) async {
    try {
      final apiResponse =
          await getIt<AppNetworkClient>().getArticlesByCategory(categoryId);
      if (apiResponse.status) {
        return right(apiResponse);
      } else {
        return left(
          ApiError(message: apiResponse.message),
        );
      }
    } catch (e) {
      return left(
        ApiError(message: '$e'),
      );
    }
  }
}
