part of 'bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @required
        Option<Either<ApiError, ApiResponse<List<Article>>>> articlesState,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        articlesState: none(),
      );
}
