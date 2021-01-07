// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

// ignore: unused_element
  _SearchState call(
      {@required
          Option<Either<ApiError, ApiResponse<List<Article>>>> searchState,
      @required
          bool isSearching}) {
    return _SearchState(
      searchState: searchState,
      isSearching: isSearching,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  Option<Either<ApiError, ApiResponse<List<Article>>>> get searchState;
  bool get isSearching;

  $SearchStateCopyWith<SearchState> get copyWith;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<ApiError, ApiResponse<List<Article>>>> searchState,
      bool isSearching});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object searchState = freezed,
    Object isSearching = freezed,
  }) {
    return _then(_value.copyWith(
      searchState: searchState == freezed
          ? _value.searchState
          : searchState as Option<Either<ApiError, ApiResponse<List<Article>>>>,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
    ));
  }
}

/// @nodoc
abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<ApiError, ApiResponse<List<Article>>>> searchState,
      bool isSearching});
}

/// @nodoc
class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object searchState = freezed,
    Object isSearching = freezed,
  }) {
    return _then(_SearchState(
      searchState: searchState == freezed
          ? _value.searchState
          : searchState as Option<Either<ApiError, ApiResponse<List<Article>>>>,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
    ));
  }
}

/// @nodoc
class _$_SearchState implements _SearchState {
  const _$_SearchState({@required this.searchState, @required this.isSearching})
      : assert(searchState != null),
        assert(isSearching != null);

  @override
  final Option<Either<ApiError, ApiResponse<List<Article>>>> searchState;
  @override
  final bool isSearching;

  @override
  String toString() {
    return 'SearchState(searchState: $searchState, isSearching: $isSearching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchState &&
            (identical(other.searchState, searchState) ||
                const DeepCollectionEquality()
                    .equals(other.searchState, searchState)) &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchState) ^
      const DeepCollectionEquality().hash(isSearching);

  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {@required
          Option<Either<ApiError, ApiResponse<List<Article>>>> searchState,
      @required
          bool isSearching}) = _$_SearchState;

  @override
  Option<Either<ApiError, ApiResponse<List<Article>>>> get searchState;
  @override
  bool get isSearching;
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith;
}
