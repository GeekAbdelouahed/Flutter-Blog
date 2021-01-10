// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _AppNetworkClient implements AppNetworkClient {
  _AppNetworkClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'http://192.168.1.8:8888/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<ApiResponse<dynamic>> signIn(user) async {
    ArgumentError.checkNotNull(user, 'user');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(user?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('/auth/login',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiResponse<dynamic>.fromJson(
      _result.data,
      (json) => json as dynamic,
    );
    return value;
  }

  @override
  Future<ApiResponse<dynamic>> signUp(user) async {
    ArgumentError.checkNotNull(user, 'user');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(user?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('/auth/register',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiResponse<dynamic>.fromJson(
      _result.data,
      (json) => json as dynamic,
    );
    return value;
  }

  @override
  Future<ApiResponse<List<Category>>> getCategories() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/categories',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiResponse<List<Category>>.fromJson(
        _result.data,
        (json) => (json as List<dynamic>)
            .map<Category>((i) => Category.fromJson(i as Map<String, dynamic>))
            .toList());
    return value;
  }

  @override
  Future<ApiResponse<List<Article>>> getArticles() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/articles',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiResponse<List<Article>>.fromJson(
        _result.data,
        (json) => (json as List<dynamic>)
            .map<Article>((i) => Article.fromJson(i as Map<String, dynamic>))
            .toList());
    return value;
  }

  @override
  Future<ApiResponse<Article>> getArticlesById(id, {userId}) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'userId': userId};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/articles',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiResponse<Article>.fromJson(
      _result.data,
      (json) => Article.fromJson(json),
    );
    return value;
  }

  @override
  Future<ApiResponse<List<Article>>> searchArticles(query) async {
    ArgumentError.checkNotNull(query, 'query');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'query': query};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/articles',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiResponse<List<Article>>.fromJson(
        _result.data,
        (json) => (json as List<dynamic>)
            .map<Article>((i) => Article.fromJson(i as Map<String, dynamic>))
            .toList());
    return value;
  }

  @override
  Future<ApiResponse<List<Article>>> getArticlesByCategory(categoryId) async {
    ArgumentError.checkNotNull(categoryId, 'categoryId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/articles/byCategory/$categoryId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiResponse<List<Article>>.fromJson(
        _result.data,
        (json) => (json as List<dynamic>)
            .map<Article>((i) => Article.fromJson(i as Map<String, dynamic>))
            .toList());
    return value;
  }

  @override
  Future<ApiResponse<List<Favorite>>> getFavorites(userId) async {
    ArgumentError.checkNotNull(userId, 'userId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/favorites/$userId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiResponse<List<Favorite>>.fromJson(
        _result.data,
        (json) => (json as List<dynamic>)
            .map<Favorite>((i) => Favorite.fromJson(i as Map<String, dynamic>))
            .toList());
    return value;
  }
}
