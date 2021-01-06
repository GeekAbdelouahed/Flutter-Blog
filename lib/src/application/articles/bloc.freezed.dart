// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ArticlesStateTearOff {
  const _$ArticlesStateTearOff();

// ignore: unused_element
  _ArticlesState call(
      {@required
          Option<Either<ApiError, ApiResponse<List<Category>>>> categoriesState,
      @required
          Option<Either<ApiError, ApiResponse<List<Article>>>> articlesState}) {
    return _ArticlesState(
      categoriesState: categoriesState,
      articlesState: articlesState,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ArticlesState = _$ArticlesStateTearOff();

/// @nodoc
mixin _$ArticlesState {
  Option<Either<ApiError, ApiResponse<List<Category>>>> get categoriesState;
  Option<Either<ApiError, ApiResponse<List<Article>>>> get articlesState;

  $ArticlesStateCopyWith<ArticlesState> get copyWith;
}

/// @nodoc
abstract class $ArticlesStateCopyWith<$Res> {
  factory $ArticlesStateCopyWith(
          ArticlesState value, $Res Function(ArticlesState) then) =
      _$ArticlesStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<ApiError, ApiResponse<List<Category>>>> categoriesState,
      Option<Either<ApiError, ApiResponse<List<Article>>>> articlesState});
}

/// @nodoc
class _$ArticlesStateCopyWithImpl<$Res>
    implements $ArticlesStateCopyWith<$Res> {
  _$ArticlesStateCopyWithImpl(this._value, this._then);

  final ArticlesState _value;
  // ignore: unused_field
  final $Res Function(ArticlesState) _then;

  @override
  $Res call({
    Object categoriesState = freezed,
    Object articlesState = freezed,
  }) {
    return _then(_value.copyWith(
      categoriesState: categoriesState == freezed
          ? _value.categoriesState
          : categoriesState
              as Option<Either<ApiError, ApiResponse<List<Category>>>>,
      articlesState: articlesState == freezed
          ? _value.articlesState
          : articlesState
              as Option<Either<ApiError, ApiResponse<List<Article>>>>,
    ));
  }
}

/// @nodoc
abstract class _$ArticlesStateCopyWith<$Res>
    implements $ArticlesStateCopyWith<$Res> {
  factory _$ArticlesStateCopyWith(
          _ArticlesState value, $Res Function(_ArticlesState) then) =
      __$ArticlesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<ApiError, ApiResponse<List<Category>>>> categoriesState,
      Option<Either<ApiError, ApiResponse<List<Article>>>> articlesState});
}

/// @nodoc
class __$ArticlesStateCopyWithImpl<$Res>
    extends _$ArticlesStateCopyWithImpl<$Res>
    implements _$ArticlesStateCopyWith<$Res> {
  __$ArticlesStateCopyWithImpl(
      _ArticlesState _value, $Res Function(_ArticlesState) _then)
      : super(_value, (v) => _then(v as _ArticlesState));

  @override
  _ArticlesState get _value => super._value as _ArticlesState;

  @override
  $Res call({
    Object categoriesState = freezed,
    Object articlesState = freezed,
  }) {
    return _then(_ArticlesState(
      categoriesState: categoriesState == freezed
          ? _value.categoriesState
          : categoriesState
              as Option<Either<ApiError, ApiResponse<List<Category>>>>,
      articlesState: articlesState == freezed
          ? _value.articlesState
          : articlesState
              as Option<Either<ApiError, ApiResponse<List<Article>>>>,
    ));
  }
}

/// @nodoc
class _$_ArticlesState implements _ArticlesState {
  const _$_ArticlesState(
      {@required this.categoriesState, @required this.articlesState})
      : assert(categoriesState != null),
        assert(articlesState != null);

  @override
  final Option<Either<ApiError, ApiResponse<List<Category>>>> categoriesState;
  @override
  final Option<Either<ApiError, ApiResponse<List<Article>>>> articlesState;

  @override
  String toString() {
    return 'ArticlesState(categoriesState: $categoriesState, articlesState: $articlesState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArticlesState &&
            (identical(other.categoriesState, categoriesState) ||
                const DeepCollectionEquality()
                    .equals(other.categoriesState, categoriesState)) &&
            (identical(other.articlesState, articlesState) ||
                const DeepCollectionEquality()
                    .equals(other.articlesState, articlesState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoriesState) ^
      const DeepCollectionEquality().hash(articlesState);

  @override
  _$ArticlesStateCopyWith<_ArticlesState> get copyWith =>
      __$ArticlesStateCopyWithImpl<_ArticlesState>(this, _$identity);
}

abstract class _ArticlesState implements ArticlesState {
  const factory _ArticlesState(
      {@required
          Option<Either<ApiError, ApiResponse<List<Category>>>> categoriesState,
      @required
          Option<Either<ApiError, ApiResponse<List<Article>>>>
              articlesState}) = _$_ArticlesState;

  @override
  Option<Either<ApiError, ApiResponse<List<Category>>>> get categoriesState;
  @override
  Option<Either<ApiError, ApiResponse<List<Article>>>> get articlesState;
  @override
  _$ArticlesStateCopyWith<_ArticlesState> get copyWith;
}
