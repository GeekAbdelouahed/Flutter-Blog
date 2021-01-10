import 'package:dartz/dartz.dart';

import '../entities/api_error/api_error.dart';
import '../entities/api_response/api_response.dart';
import '../entities/article/article.dart';

abstract class IProfileFacade {
  Future<Either<ApiError, ApiResponse<List<Article>>>> getArticlesByUser(
    String userId,
  );
}
