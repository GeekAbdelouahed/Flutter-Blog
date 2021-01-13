import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/article_create/i_article_create_facade.dart';
import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';

part 'bloc.freezed.dart';
part 'state.dart';

@injectable
class ArticleCreateBloc extends Cubit<ArticleCreateState> {
  final IArticleCreateFacade _articleFacade;

  ArticleCreateBloc(this._articleFacade) : super(ArticleCreateState.initial());

  void createArticle(FormData data) async {
    emit(state.copyWith(articleCreateState: none()));
    final result = await _articleFacade.createArticle(data);
    emit(state.copyWith(articleCreateState: optionOf(result)));
  }
}
