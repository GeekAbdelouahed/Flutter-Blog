import 'package:dartz/dartz.dart';

import '../entities/api_error/api_error.dart';
import '../entities/api_response/api_response.dart';
import '../entities/article/article.dart';
import '../entities/category/category.dart';

abstract class IArticlesFacade {
  Future<Either<ApiError, ApiResponse<List<Category>>>> getCategories();

  Future<Either<ApiError, ApiResponse<List<Article>>>> getArticles();

  Future<Either<ApiError, ApiResponse<List<Article>>>> getArticlesByCategory(String categoryId);
}
