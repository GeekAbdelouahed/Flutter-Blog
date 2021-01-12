import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/entities/api_response/api_response.dart';
import '../../../domain/entities/article/article.dart';
import '../../../domain/entities/category/category.dart';
import '../../../domain/entities/favorite/favorite.dart';
import '../../../domain/entities/user/user.dart';
import '../../../presentation/routes/routes.dart';
import 'interceptor.dart';

part 'network.g.dart';

@RestApi(baseUrl: AppRoutes.host)
abstract class AppNetworkClient {
  factory AppNetworkClient(Dio dio, {String baseUrl}) = _AppNetworkClient;

  @POST('/auth/login')
  Future<ApiResponse<User>> signIn(
    @Body() User user,
  );

  @POST('/auth/register')
  Future<ApiResponse<User>> signUp(
    @Body() User user,
  );

  @GET('/users/{userId}')
  Future<ApiResponse<User>> getUserInformation(
    @Path('userId') String userId,
  );

  @GET('/categories')
  Future<ApiResponse<List<Category>>> getCategories();

  @GET('/articles')
  Future<ApiResponse<List<Article>>> getArticles();

  @GET('/articles/{id}')
  Future<ApiResponse<Article>> getArticlesById(
    @Path('id') String id, {
    @Query('userId') String userId,
  });

  @GET('/articles')
  Future<ApiResponse<List<Article>>> searchArticles(
    @Query('query') String query,
  );

  @GET('/articles/byCategory/{categoryId}')
  Future<ApiResponse<List<Article>>> getArticlesByCategory(
    @Path('categoryId') String categoryId,
  );

  @GET('/articles/byUser/{userId}')
  Future<ApiResponse<List<Article>>> getArticlesByUser(
    @Path('userId') String userId,
  );

  @GET('/favorites/{userId}')
  Future<ApiResponse<List<Favorite>>> getFavorites(
    @Path('userId') String userId,
  );

  @POST('/favorites')
  Future<ApiResponse> addFavorite(
    @Body() Favorite favorite,
  );

  @DELETE('/favorites')
  Future<ApiResponse> removeFavorite(
    @Body() Favorite favorite,
  );
}

class AppNetwork {
  AppNetwork._();

  static AppNetworkClient _appNetworkClient;

  static AppNetworkClient get instance {
    if (_appNetworkClient == null) {
      final dio = Dio();
      dio.interceptors.add(AppInterceptor());
      _appNetworkClient = AppNetworkClient(dio);
    }
    return _appNetworkClient;
  }
}
