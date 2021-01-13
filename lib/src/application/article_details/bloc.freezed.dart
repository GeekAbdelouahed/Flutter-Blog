// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ArticleDetailsStateTearOff {
  const _$ArticleDetailsStateTearOff();

// ignore: unused_element
  _ArticleDetailsState call(
      {@required
          Option<Either<ApiError, ApiResponse<Article>>> articleDetailsState}) {
    return _ArticleDetailsState(
      articleDetailsState: articleDetailsState,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ArticleDetailsState = _$ArticleDetailsStateTearOff();

/// @nodoc
mixin _$ArticleDetailsState {
  Option<Either<ApiError, ApiResponse<Article>>> get articleDetailsState;

  $ArticleDetailsStateCopyWith<ArticleDetailsState> get copyWith;
}

/// @nodoc
abstract class $ArticleDetailsStateCopyWith<$Res> {
  factory $ArticleDetailsStateCopyWith(
          ArticleDetailsState value, $Res Function(ArticleDetailsState) then) =
      _$ArticleDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<ApiError, ApiResponse<Article>>> articleDetailsState});
}

/// @nodoc
class _$ArticleDetailsStateCopyWithImpl<$Res>
    implements $ArticleDetailsStateCopyWith<$Res> {
  _$ArticleDetailsStateCopyWithImpl(this._value, this._then);

  final ArticleDetailsState _value;
  // ignore: unused_field
  final $Res Function(ArticleDetailsState) _then;

  @override
  $Res call({
    Object articleDetailsState = freezed,
  }) {
    return _then(_value.copyWith(
      articleDetailsState: articleDetailsState == freezed
          ? _value.articleDetailsState
          : articleDetailsState
              as Option<Either<ApiError, ApiResponse<Article>>>,
    ));
  }
}

/// @nodoc
abstract class _$ArticleDetailsStateCopyWith<$Res>
    implements $ArticleDetailsStateCopyWith<$Res> {
  factory _$ArticleDetailsStateCopyWith(_ArticleDetailsState value,
          $Res Function(_ArticleDetailsState) then) =
      __$ArticleDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<ApiError, ApiResponse<Article>>> articleDetailsState});
}

/// @nodoc
class __$ArticleDetailsStateCopyWithImpl<$Res>
    extends _$ArticleDetailsStateCopyWithImpl<$Res>
    implements _$ArticleDetailsStateCopyWith<$Res> {
  __$ArticleDetailsStateCopyWithImpl(
      _ArticleDetailsState _value, $Res Function(_ArticleDetailsState) _then)
      : super(_value, (v) => _then(v as _ArticleDetailsState));

  @override
  _ArticleDetailsState get _value => super._value as _ArticleDetailsState;

  @override
  $Res call({
    Object articleDetailsState = freezed,
  }) {
    return _then(_ArticleDetailsState(
      articleDetailsState: articleDetailsState == freezed
          ? _value.articleDetailsState
          : articleDetailsState
              as Option<Either<ApiError, ApiResponse<Article>>>,
    ));
  }
}

/// @nodoc
class _$_ArticleDetailsState implements _ArticleDetailsState {
  const _$_ArticleDetailsState({@required this.articleDetailsState})
      : assert(articleDetailsState != null);

  @override
  final Option<Either<ApiError, ApiResponse<Article>>> articleDetailsState;

  @override
  String toString() {
    return 'ArticleDetailsState(articleDetailsState: $articleDetailsState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArticleDetailsState &&
            (identical(other.articleDetailsState, articleDetailsState) ||
                const DeepCollectionEquality()
                    .equals(other.articleDetailsState, articleDetailsState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(articleDetailsState);

  @override
  _$ArticleDetailsStateCopyWith<_ArticleDetailsState> get copyWith =>
      __$ArticleDetailsStateCopyWithImpl<_ArticleDetailsState>(
          this, _$identity);
}

abstract class _ArticleDetailsState implements ArticleDetailsState {
  const factory _ArticleDetailsState(
      {@required
          Option<Either<ApiError, ApiResponse<Article>>>
              articleDetailsState}) = _$_ArticleDetailsState;

  @override
  Option<Either<ApiError, ApiResponse<Article>>> get articleDetailsState;
  @override
  _$ArticleDetailsStateCopyWith<_ArticleDetailsState> get copyWith;
}
