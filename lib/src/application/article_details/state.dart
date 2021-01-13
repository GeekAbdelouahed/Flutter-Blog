part of 'bloc.dart';

@freezed
abstract class ArticleDetailsState with _$ArticleDetailsState {
  const factory ArticleDetailsState({
    @required
        Option<Either<ApiError, ApiResponse<Article>>> articleDetailsState,
  }) = _ArticleDetailsState;

  factory ArticleDetailsState.initial() => ArticleDetailsState(
        articleDetailsState: none(),
      );
}
