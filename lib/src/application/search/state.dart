part of 'bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @required Option<Either<ApiError, ApiResponse<List<Article>>>> searchState,
    @required bool isSearching,
  }) = _SearchState;

  factory SearchState.initial() => SearchState(
        searchState: none(),
        isSearching: false,
      );
}
