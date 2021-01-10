import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/article/i_article_facade.dart';
import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';
import '../../domain/entities/article/article.dart';
import '../../injection.dart';
import '../core/network/network.dart';

@LazySingleton(as: IArticleFacade)
class ArticlesFacade implements IArticleFacade {
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
}
