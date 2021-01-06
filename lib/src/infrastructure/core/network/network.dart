import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/entities/api_response/api_response.dart';
import '../../../domain/entities/article/article.dart';
import '../../../domain/entities/category/category.dart';
import '../../../domain/entities/user/user.dart';
import '../../../presentation/routes/routes.dart';

part 'network.g.dart';

@RestApi(baseUrl: AppRoutes.host)
abstract class AppNetworkClient {
  factory AppNetworkClient(Dio dio, {String baseUrl}) = _AppNetworkClient;

  @POST('/auth/login')
  Future<ApiResponse> signIn(@Body() User user);

  @POST('/auth/register')
  Future<ApiResponse> signUp(@Body() User user);

  @GET('/categories')
  Future<ApiResponse<List<Category>>> getCategories();

  @GET('/articles')
  Future<ApiResponse<List<Article>>> getArticles();
}

class AppNetwork {
  AppNetwork._();

  static AppNetworkClient _appNetworkClient;

  static AppNetworkClient get instance {
    if (_appNetworkClient == null) {
      final dio = Dio();
      _appNetworkClient = AppNetworkClient(dio);
    }
    return _appNetworkClient;
  }
}
