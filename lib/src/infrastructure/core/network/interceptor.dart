import 'package:dio/dio.dart';

import '../../../injection.dart';
import '../preferences.dart';

class AppInterceptor extends Interceptor {
  final _preferences = getIt<AppPreferences>();

  @override
  Future onRequest(RequestOptions options) async {
    final token = _preferences.token;
    options.headers.addAll({'Authorization': token});
    return options;
  }
}
