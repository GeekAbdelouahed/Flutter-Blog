part of 'bloc.dart';

@freezed
abstract class ArticleCreateState with _$ArticleCreateState {
  const factory ArticleCreateState({
    @required Option<Either<ApiError, ApiResponse>> articleCreateState,
  }) = _ArticleCreateState;

  factory ArticleCreateState.initial() => ArticleCreateState(
        articleCreateState: none(),
      );
}
