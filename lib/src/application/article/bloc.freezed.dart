// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ArticleStateTearOff {
  const _$ArticleStateTearOff();

// ignore: unused_element
  _ArticleState call(
      {@required Option<Either<ApiError, ApiResponse<Article>>> articleState}) {
    return _ArticleState(
      articleState: articleState,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ArticleState = _$ArticleStateTearOff();

/// @nodoc
mixin _$ArticleState {
  Option<Either<ApiError, ApiResponse<Article>>> get articleState;

  $ArticleStateCopyWith<ArticleState> get copyWith;
}

/// @nodoc
abstract class $ArticleStateCopyWith<$Res> {
  factory $ArticleStateCopyWith(
          ArticleState value, $Res Function(ArticleState) then) =
      _$ArticleStateCopyWithImpl<$Res>;
  $Res call({Option<Either<ApiError, ApiResponse<Article>>> articleState});
}

/// @nodoc
class _$ArticleStateCopyWithImpl<$Res> implements $ArticleStateCopyWith<$Res> {
  _$ArticleStateCopyWithImpl(this._value, this._then);

  final ArticleState _value;
  // ignore: unused_field
  final $Res Function(ArticleState) _then;

  @override
  $Res call({
    Object articleState = freezed,
  }) {
    return _then(_value.copyWith(
      articleState: articleState == freezed
          ? _value.articleState
          : articleState as Option<Either<ApiError, ApiResponse<Article>>>,
    ));
  }
}

/// @nodoc
abstract class _$ArticleStateCopyWith<$Res>
    implements $ArticleStateCopyWith<$Res> {
  factory _$ArticleStateCopyWith(
          _ArticleState value, $Res Function(_ArticleState) then) =
      __$ArticleStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<Either<ApiError, ApiResponse<Article>>> articleState});
}

/// @nodoc
class __$ArticleStateCopyWithImpl<$Res> extends _$ArticleStateCopyWithImpl<$Res>
    implements _$ArticleStateCopyWith<$Res> {
  __$ArticleStateCopyWithImpl(
      _ArticleState _value, $Res Function(_ArticleState) _then)
      : super(_value, (v) => _then(v as _ArticleState));

  @override
  _ArticleState get _value => super._value as _ArticleState;

  @override
  $Res call({
    Object articleState = freezed,
  }) {
    return _then(_ArticleState(
      articleState: articleState == freezed
          ? _value.articleState
          : articleState as Option<Either<ApiError, ApiResponse<Article>>>,
    ));
  }
}

/// @nodoc
class _$_ArticleState implements _ArticleState {
  const _$_ArticleState({@required this.articleState})
      : assert(articleState != null);

  @override
  final Option<Either<ApiError, ApiResponse<Article>>> articleState;

  @override
  String toString() {
    return 'ArticleState(articleState: $articleState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArticleState &&
            (identical(other.articleState, articleState) ||
                const DeepCollectionEquality()
                    .equals(other.articleState, articleState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(articleState);

  @override
  _$ArticleStateCopyWith<_ArticleState> get copyWith =>
      __$ArticleStateCopyWithImpl<_ArticleState>(this, _$identity);
}

abstract class _ArticleState implements ArticleState {
  const factory _ArticleState(
          {@required
              Option<Either<ApiError, ApiResponse<Article>>> articleState}) =
      _$_ArticleState;

  @override
  Option<Either<ApiError, ApiResponse<Article>>> get articleState;
  @override
  _$ArticleStateCopyWith<_ArticleState> get copyWith;
}
