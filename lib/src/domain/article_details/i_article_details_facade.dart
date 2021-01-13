import 'package:dartz/dartz.dart';

import '../entities/api_error/api_error.dart';
import '../entities/api_response/api_response.dart';
import '../entities/article/article.dart';

abstract class IArticleDetailsFacade {
  Future<Either<ApiError, ApiResponse<Article>>> getArticleDetails(
    String articleId, {
    String userId,
  });

  Future<Either<ApiError, ApiResponse>> addFavorite(
    String articleId,
    String userId,
  );

  Future<Either<ApiError, ApiResponse>> removeFavorite(
    String articleId,
    String userId,
  );
}
