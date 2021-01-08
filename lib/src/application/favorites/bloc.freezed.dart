// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FavoritesStateTearOff {
  const _$FavoritesStateTearOff();

// ignore: unused_element
  _FavoritesState call(
      {@required
          Option<Either<ApiError, ApiResponse<List<Favorite>>>>
              favoritesState}) {
    return _FavoritesState(
      favoritesState: favoritesState,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FavoritesState = _$FavoritesStateTearOff();

/// @nodoc
mixin _$FavoritesState {
  Option<Either<ApiError, ApiResponse<List<Favorite>>>> get favoritesState;

  $FavoritesStateCopyWith<FavoritesState> get copyWith;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<ApiError, ApiResponse<List<Favorite>>>> favoritesState});
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  final FavoritesState _value;
  // ignore: unused_field
  final $Res Function(FavoritesState) _then;

  @override
  $Res call({
    Object favoritesState = freezed,
  }) {
    return _then(_value.copyWith(
      favoritesState: favoritesState == freezed
          ? _value.favoritesState
          : favoritesState
              as Option<Either<ApiError, ApiResponse<List<Favorite>>>>,
    ));
  }
}

/// @nodoc
abstract class _$FavoritesStateCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$FavoritesStateCopyWith(
          _FavoritesState value, $Res Function(_FavoritesState) then) =
      __$FavoritesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<ApiError, ApiResponse<List<Favorite>>>> favoritesState});
}

/// @nodoc
class __$FavoritesStateCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res>
    implements _$FavoritesStateCopyWith<$Res> {
  __$FavoritesStateCopyWithImpl(
      _FavoritesState _value, $Res Function(_FavoritesState) _then)
      : super(_value, (v) => _then(v as _FavoritesState));

  @override
  _FavoritesState get _value => super._value as _FavoritesState;

  @override
  $Res call({
    Object favoritesState = freezed,
  }) {
    return _then(_FavoritesState(
      favoritesState: favoritesState == freezed
          ? _value.favoritesState
          : favoritesState
              as Option<Either<ApiError, ApiResponse<List<Favorite>>>>,
    ));
  }
}

/// @nodoc
class _$_FavoritesState implements _FavoritesState {
  const _$_FavoritesState({@required this.favoritesState})
      : assert(favoritesState != null);

  @override
  final Option<Either<ApiError, ApiResponse<List<Favorite>>>> favoritesState;

  @override
  String toString() {
    return 'FavoritesState(favoritesState: $favoritesState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoritesState &&
            (identical(other.favoritesState, favoritesState) ||
                const DeepCollectionEquality()
                    .equals(other.favoritesState, favoritesState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(favoritesState);

  @override
  _$FavoritesStateCopyWith<_FavoritesState> get copyWith =>
      __$FavoritesStateCopyWithImpl<_FavoritesState>(this, _$identity);
}

abstract class _FavoritesState implements FavoritesState {
  const factory _FavoritesState(
      {@required
          Option<Either<ApiError, ApiResponse<List<Favorite>>>>
              favoritesState}) = _$_FavoritesState;

  @override
  Option<Either<ApiError, ApiResponse<List<Favorite>>>> get favoritesState;
  @override
  _$FavoritesStateCopyWith<_FavoritesState> get copyWith;
}
