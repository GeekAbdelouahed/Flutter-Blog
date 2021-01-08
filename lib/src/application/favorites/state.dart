part of 'bloc.dart';

@freezed
abstract class FavoritesState with _$FavoritesState {
  const factory FavoritesState({
    @required
        Option<Either<ApiError, ApiResponse<List<Favorite>>>> favoritesState,
  }) = _FavoritesState;

  factory FavoritesState.initial() => FavoritesState(
        favoritesState: none(),
      );
}
