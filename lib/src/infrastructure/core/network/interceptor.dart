import 'package:dio/dio.dart';

class AppInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
    // TODO add dynamic token
    final token =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsiYW1pbmVAZ21haWwuY29tIiwiWHZCVVZpYXFXcFZHd0V5WUxiWktnZHVNYjZRcWJRMXUiXSwiZXhwIjoxNjQwNjMxMzQwLCJpYXQiOjE2MDk1MjczNDAsImp0aSI6Ilh2QlVWaWFxV3BWR3dFeVlMYlpLZ2R1TWI2UXFiUTF1In0.6isf3pY7NSKhnTz8W3JA2XWZsdz0_X4qZ31FlgPT_n8';
    options.headers.addAll({'Authorization': token});
    return options;
  }
}
