import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/entities/api_response/api_response.dart';
import '../../../domain/entities/user/user.dart';

part 'network.g.dart';

@RestApi(baseUrl: 'http://192.168.1.8:8888/')
abstract class AppNetworkClient {
  factory AppNetworkClient(Dio dio, {String baseUrl}) = _AppNetworkClient;

  @POST('/auth/login')
  Future<ApiResponse> signIn(@Body() User user);

  @POST('/auth/register')
  Future<ApiResponse> signUp(@Body() User user);
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
