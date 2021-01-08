import 'package:dartz/dartz.dart';

import '../entities/api_error/api_error.dart';
import '../entities/api_response/api_response.dart';
import '../entities/favorite/favorite.dart';

abstract class IFavoritesFacade {
  Future<Either<ApiError, ApiResponse<List<Favorite>>>> getFavorites(
    String userId,
  );
}
