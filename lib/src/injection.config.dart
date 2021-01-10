// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/article/bloc.dart';
import 'application/articles/bloc.dart';
import 'infrastructure/articles/articles_facade.dart';
import 'infrastructure/article/article_facade.dart' as Blog;
import 'application/favorites/bloc.dart';
import 'infrastructure/favorites/favorites_facade.dart';
import 'domain/article/i_article_facade.dart';
import 'domain/articles/i_articles_facade.dart';
import 'domain/favorites/i_favorites_facade.dart';
import 'domain/search/i_search_facade.dart';
import 'domain/sign_in/i_sign_in_facade.dart';
import 'domain/sign_up/i_sign_up_facade.dart';
import 'application/search/bloc.dart';
import 'infrastructure/search/search_facade.dart';
import 'application/sign_in/bloc.dart';
import 'infrastructure/sign_in/sign_in_facade.dart';
import 'application/sign_up/bloc.dart';
import 'infrastructure/sign_up/sign_up_facade.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<IArticleFacade>(() => Blog.ArticlesFacade());
  gh.lazySingleton<IArticlesFacade>(() => ArticlesFacade());
  gh.lazySingleton<IFavoritesFacade>(() => FavoritesFacade());
  gh.lazySingleton<ISearchFacade>(() => SearchFacade());
  gh.lazySingleton<ISignInFacade>(() => SignInFacade());
  gh.lazySingleton<ISignUpFacade>(() => SignUpFacade());
  gh.factory<SearchBloc>(() => SearchBloc(get<ISearchFacade>()));
  gh.factory<SignInBloc>(() => SignInBloc(get<ISignInFacade>()));
  gh.factory<SignUpBloc>(() => SignUpBloc(get<ISignUpFacade>()));
  gh.factory<ArticleBloc>(() => ArticleBloc(get<IArticleFacade>()));
  gh.factory<ArticlesBloc>(() => ArticlesBloc(get<IArticlesFacade>()));
  gh.factory<FavoritesBloc>(() => FavoritesBloc(get<IFavoritesFacade>()));
  return get;
}
