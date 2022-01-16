// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ArticleCreateStateTearOff {
  const _$ArticleCreateStateTearOff();

// ignore: unused_element
  _ArticleCreateState call(
      {@required Option<Either<ApiError, ApiResponse>> articleCreateState}) {
    return _ArticleCreateState(
      articleCreateState: articleCreateState,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ArticleCreateState = _$ArticleCreateStateTearOff();

/// @nodoc
mixin _$ArticleCreateState {
  Option<Either<ApiError, ApiResponse>> get articleCreateState;

  @JsonKey(ignore: true)
  $ArticleCreateStateCopyWith<ArticleCreateState> get copyWith;
}

/// @nodoc
abstract class $ArticleCreateStateCopyWith<$Res> {
  factory $ArticleCreateStateCopyWith(
          ArticleCreateState value, $Res Function(ArticleCreateState) then) =
      _$ArticleCreateStateCopyWithImpl<$Res>;
  $Res call({Option<Either<ApiError, ApiResponse>> articleCreateState});
}

/// @nodoc
class _$ArticleCreateStateCopyWithImpl<$Res>
    implements $ArticleCreateStateCopyWith<$Res> {
  _$ArticleCreateStateCopyWithImpl(this._value, this._then);

  final ArticleCreateState _value;
  // ignore: unused_field
  final $Res Function(ArticleCreateState) _then;

  @override
  $Res call({
    Object articleCreateState = freezed,
  }) {
    return _then(_value.copyWith(
      articleCreateState: articleCreateState == freezed
          ? _value.articleCreateState
          : articleCreateState as Option<Either<ApiError, ApiResponse>>,
    ));
  }
}

/// @nodoc
abstract class _$ArticleCreateStateCopyWith<$Res>
    implements $ArticleCreateStateCopyWith<$Res> {
  factory _$ArticleCreateStateCopyWith(
          _ArticleCreateState value, $Res Function(_ArticleCreateState) then) =
      __$ArticleCreateStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<Either<ApiError, ApiResponse>> articleCreateState});
}

/// @nodoc
class __$ArticleCreateStateCopyWithImpl<$Res>
    extends _$ArticleCreateStateCopyWithImpl<$Res>
    implements _$ArticleCreateStateCopyWith<$Res> {
  __$ArticleCreateStateCopyWithImpl(
      _ArticleCreateState _value, $Res Function(_ArticleCreateState) _then)
      : super(_value, (v) => _then(v as _ArticleCreateState));

  @override
  _ArticleCreateState get _value => super._value as _ArticleCreateState;

  @override
  $Res call({
    Object articleCreateState = freezed,
  }) {
    return _then(_ArticleCreateState(
      articleCreateState: articleCreateState == freezed
          ? _value.articleCreateState
          : articleCreateState as Option<Either<ApiError, ApiResponse>>,
    ));
  }
}

/// @nodoc
class _$_ArticleCreateState implements _ArticleCreateState {
  const _$_ArticleCreateState({@required this.articleCreateState})
      : assert(articleCreateState != null);

  @override
  final Option<Either<ApiError, ApiResponse>> articleCreateState;

  @override
  String toString() {
    return 'ArticleCreateState(articleCreateState: $articleCreateState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArticleCreateState &&
            (identical(other.articleCreateState, articleCreateState) ||
                const DeepCollectionEquality()
                    .equals(other.articleCreateState, articleCreateState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(articleCreateState);

  @JsonKey(ignore: true)
  @override
  _$ArticleCreateStateCopyWith<_ArticleCreateState> get copyWith =>
      __$ArticleCreateStateCopyWithImpl<_ArticleCreateState>(this, _$identity);
}

abstract class _ArticleCreateState implements ArticleCreateState {
  const factory _ArticleCreateState(
          {@required
              Option<Either<ApiError, ApiResponse>> articleCreateState}) =
      _$_ArticleCreateState;

  @override
  Option<Either<ApiError, ApiResponse>> get articleCreateState;
  @override
  @JsonKey(ignore: true)
  _$ArticleCreateStateCopyWith<_ArticleCreateState> get copyWith;
}
