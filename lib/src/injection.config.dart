// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/article_create/bloc.dart' as _i23;
import 'application/article_details/bloc.dart' as _i24;
import 'application/articles/bloc.dart' as _i25;
import 'application/favorites/bloc.dart' as _i26;
import 'application/profile/bloc.dart' as _i19;
import 'application/search/bloc.dart' as _i20;
import 'application/sign_in/bloc.dart' as _i21;
import 'application/sign_up/bloc.dart' as _i22;
import 'domain/article_create/i_article_create_facade.dart' as _i3;
import 'domain/article_details/i_article_details_facade.dart' as _i5;
import 'domain/articles/i_articles_facade.dart' as _i7;
import 'domain/favorites/i_favorites_facade.dart' as _i9;
import 'domain/profile/i_profile_facade.dart' as _i11;
import 'domain/search/i_search_facade.dart' as _i13;
import 'domain/sign_in/i_sign_in_facade.dart' as _i15;
import 'domain/sign_up/i_sign_up_facade.dart' as _i17;
import 'infrastructure/article_create/article_create_facade.dart' as _i4;
import 'infrastructure/article_details/article_details_facade.dart' as _i6;
import 'infrastructure/articles/articles_facade.dart' as _i8;
import 'infrastructure/favorites/favorites_facade.dart' as _i10;
import 'infrastructure/profile/profile_facade.dart' as _i12;
import 'infrastructure/search/search_facade.dart' as _i14;
import 'infrastructure/sign_in/sign_in_facade.dart' as _i16;
import 'infrastructure/sign_up/sign_up_facade.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IArticleCreateFacade>(() => _i4.ArticlesDetailsFacade());
  gh.lazySingleton<_i5.IArticleDetailsFacade>(
      () => _i6.ArticlesDetailsFacade());
  gh.lazySingleton<_i7.IArticlesFacade>(() => _i8.ArticlesFacade());
  gh.lazySingleton<_i9.IFavoritesFacade>(() => _i10.FavoritesFacade());
  gh.lazySingleton<_i11.IProfileFacade>(() => _i12.ProfileFacade());
  gh.lazySingleton<_i13.ISearchFacade>(() => _i14.SearchFacade());
  gh.lazySingleton<_i15.ISignInFacade>(() => _i16.SignInFacade());
  gh.lazySingleton<_i17.ISignUpFacade>(() => _i18.SignUpFacade());
  gh.factory<_i19.ProfileBloc>(
      () => _i19.ProfileBloc(get<_i11.IProfileFacade>()));
  gh.factory<_i20.SearchBloc>(() => _i20.SearchBloc(get<_i13.ISearchFacade>()));
  gh.factory<_i21.SignInBloc>(() => _i21.SignInBloc(get<_i15.ISignInFacade>()));
  gh.factory<_i22.SignUpBloc>(() => _i22.SignUpBloc(get<_i17.ISignUpFacade>()));
  gh.factory<_i23.ArticleCreateBloc>(
      () => _i23.ArticleCreateBloc(get<_i3.IArticleCreateFacade>()));
  gh.factory<_i24.ArticleDetailsBloc>(
      () => _i24.ArticleDetailsBloc(get<_i5.IArticleDetailsFacade>()));
  gh.factory<_i25.ArticlesBloc>(
      () => _i25.ArticlesBloc(get<_i7.IArticlesFacade>()));
  gh.factory<_i26.FavoritesBloc>(
      () => _i26.FavoritesBloc(get<_i9.IFavoritesFacade>()));
  return get;
}
