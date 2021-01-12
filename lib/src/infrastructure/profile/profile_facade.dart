import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';
import '../../domain/entities/article/article.dart';
import '../../domain/entities/user/user.dart';
import '../../domain/profile/i_profile_facade.dart';
import '../../injection.dart';
import '../core/network/network.dart';

@LazySingleton(as: IProfileFacade)
class ProfileFacade implements IProfileFacade {
  @override
  Future<Either<ApiError, ApiResponse<User>>> getUserInformation(
    String userId,
  ) async {
    try {
      final apiResponse =
          await getIt<AppNetworkClient>().getUserInformation(userId);
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
  Future<Either<ApiError, ApiResponse<List<Article>>>> getArticlesByUser(
    String userId,
  ) async {
    try {
      final apiResponse =
          await getIt<AppNetworkClient>().getArticlesByUser(userId);
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
