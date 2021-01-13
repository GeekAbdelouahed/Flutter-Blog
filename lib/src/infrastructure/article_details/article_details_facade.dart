import 'package:Blog/src/domain/entities/favorite/favorite.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/article_details/i_article_details_facade.dart';
import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';
import '../../domain/entities/article/article.dart';
import '../../injection.dart';
import '../core/network/network.dart';

@LazySingleton(as: IArticleDetailsFacade)
class ArticlesDetailsFacade implements IArticleDetailsFacade {
  @override
  Future<Either<ApiError, ApiResponse<Article>>> getArticleDetails(
    String id, {
    String userId,
  }) async {
    try {
      final apiResponse =
          await getIt<AppNetworkClient>().getArticlesById(id, userId: userId);
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
  Future<Either<ApiError, ApiResponse>> addFavorite(
    String articleId,
    String userId,
  ) async {
    try {
      final favorite = Favorite(articleId: articleId, userId: userId);
      final apiResponse = await getIt<AppNetworkClient>().addFavorite(favorite);
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
  Future<Either<ApiError, ApiResponse>> removeFavorite(
    String articleId,
    String userId,
  ) async {
    try {
      final favorite = Favorite(articleId: articleId, userId: userId);
      final apiResponse =
          await getIt<AppNetworkClient>().removeFavorite(favorite);
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
