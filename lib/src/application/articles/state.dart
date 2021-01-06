part of 'bloc.dart';

@freezed
abstract class ArticlesState with _$ArticlesState {
  const factory ArticlesState({
    @required
        Option<Either<ApiError, ApiResponse<List<Category>>>> categoriesState,
    @required
        Option<Either<ApiError, ApiResponse<List<Article>>>> articlesState,
  }) = _ArticlesState;

  factory ArticlesState.initial() => ArticlesState(
        categoriesState: none(),
        articlesState: none(),
      );
}
