part of 'bloc.dart';

@freezed
abstract class ArticlesState with _$ArticlesState {
  const factory ArticlesState({
    @required
        Option<Either<ApiError, ApiResponse<List<Category>>>> categoriesState,
    @required
        Option<Either<ApiError, ApiResponse<List<Article>>>> articlesState,
    @required
        Option<Either<ApiError, ApiResponse<List<Article>>>>
            articlesByCategoryState,
  }) = _ArticlesState;

  factory ArticlesState.initial() => ArticlesState(
        categoriesState: none(),
        articlesState: none(),
        articlesByCategoryState: none(),
      );
}
