part of 'bloc.dart';

@freezed
abstract class ArticleState with _$ArticleState {
  const factory ArticleState({
    @required Option<Either<ApiError, ApiResponse<Article>>> articleState,
  }) = _ArticleState;

  factory ArticleState.initial() => ArticleState(
        articleState: none(),
      );
}
