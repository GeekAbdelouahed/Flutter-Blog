import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';
import '../../domain/entities/article/article.dart';
import '../../domain/search/i_search_facade.dart';
import '../../injection.dart';
import '../core/network/network.dart';

@LazySingleton(as: ISearchFacade)
class SearchFacade implements ISearchFacade {
  @override
  Future<Either<ApiError, ApiResponse<List<Article>>>> searchArticles(
      String query) async {
    try {
      final apiResponse = await getIt<AppNetworkClient>().searchArticles(query);
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
