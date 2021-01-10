import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/article/i_article_facade.dart';
import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';
import '../../domain/entities/article/article.dart';

part 'bloc.freezed.dart';

part 'state.dart';

@injectable
class ArticlesBloc extends Cubit<ArticleState> {
  final IArticleFacade _articleFacade;

  ArticlesBloc(this._articleFacade) : super(ArticleState.initial());

  void getArticleDetails(String id, {String userId}) async {
    emit(state.copyWith(articleState: none()));
    final result = await _articleFacade.getArticleDetails(id, userId: userId);
    emit(state.copyWith(articleState: optionOf(result)));
  }
}
