import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';
import '../../domain/entities/article/article.dart';
import '../../domain/search/i_search_facade.dart';

part 'bloc.freezed.dart';

part 'state.dart';

@injectable
class SearchBloc extends Cubit<SearchState> {
  final ISearchFacade _iSearchFacade;

  SearchBloc(this._iSearchFacade) : super(SearchState.initial());

  void searchArticles(String query) async {
    emit(state.copyWith(
      searchState: none(),
      isSearching: true,
    ));
    final result = await _iSearchFacade.searchArticles(query);
    emit(state.copyWith(
      searchState: optionOf(result),
      isSearching: false,
    ));
  }
}
