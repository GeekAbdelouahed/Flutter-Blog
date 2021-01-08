import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';
import '../../domain/entities/favorite/favorite.dart';
import '../../domain/favorites/i_favorites_facade.dart';
import '../../injection.dart';
import '../core/network/network.dart';

@LazySingleton(as: IFavoritesFacade)
class FavoritesFacade implements IFavoritesFacade {
  @override
  Future<Either<ApiError, ApiResponse<List<Favorite>>>> getFavorites(
      String userId) async {
    try {
      final apiResponse = await getIt<AppNetworkClient>().getFavorites(userId);
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
