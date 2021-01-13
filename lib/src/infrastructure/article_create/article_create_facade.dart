import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/article_create/i_article_create_facade.dart';
import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';
import '../../injection.dart';
import '../core/network/network.dart';

@LazySingleton(as: IArticleCreateFacade)
class ArticlesDetailsFacade implements IArticleCreateFacade {
  @override
  Future<Either<ApiError, ApiResponse>> createArticle(FormData data) async {
    try {
      final apiResponse = await getIt<AppNetworkClient>().createArticle(data);
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
