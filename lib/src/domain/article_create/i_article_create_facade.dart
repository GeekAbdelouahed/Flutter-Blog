import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../entities/api_error/api_error.dart';
import '../entities/api_response/api_response.dart';

abstract class IArticleCreateFacade {
  Future<Either<ApiError, ApiResponse>> createArticle(FormData data);
}
