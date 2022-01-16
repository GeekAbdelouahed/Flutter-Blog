// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

// ignore: unused_element
  _ProfileState call(
      {@required
          Option<Either<ApiError, ApiResponse<User>>> userInformationState,
      @required
          Option<Either<ApiError, ApiResponse<List<Article>>>> articlesState}) {
    return _ProfileState(
      userInformationState: userInformationState,
      articlesState: articlesState,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  Option<Either<ApiError, ApiResponse<User>>> get userInformationState;
  Option<Either<ApiError, ApiResponse<List<Article>>>> get articlesState;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<ApiError, ApiResponse<User>>> userInformationState,
      Option<Either<ApiError, ApiResponse<List<Article>>>> articlesState});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object userInformationState = freezed,
    Object articlesState = freezed,
  }) {
    return _then(_value.copyWith(
      userInformationState: userInformationState == freezed
          ? _value.userInformationState
          : userInformationState as Option<Either<ApiError, ApiResponse<User>>>,
      articlesState: articlesState == freezed
          ? _value.articlesState
          : articlesState
              as Option<Either<ApiError, ApiResponse<List<Article>>>>,
    ));
  }
}

/// @nodoc
abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<ApiError, ApiResponse<User>>> userInformationState,
      Option<Either<ApiError, ApiResponse<List<Article>>>> articlesState});
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object userInformationState = freezed,
    Object articlesState = freezed,
  }) {
    return _then(_ProfileState(
      userInformationState: userInformationState == freezed
          ? _value.userInformationState
          : userInformationState as Option<Either<ApiError, ApiResponse<User>>>,
      articlesState: articlesState == freezed
          ? _value.articlesState
          : articlesState
              as Option<Either<ApiError, ApiResponse<List<Article>>>>,
    ));
  }
}

/// @nodoc
class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {@required this.userInformationState, @required this.articlesState})
      : assert(userInformationState != null),
        assert(articlesState != null);

  @override
  final Option<Either<ApiError, ApiResponse<User>>> userInformationState;
  @override
  final Option<Either<ApiError, ApiResponse<List<Article>>>> articlesState;

  @override
  String toString() {
    return 'ProfileState(userInformationState: $userInformationState, articlesState: $articlesState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileState &&
            (identical(other.userInformationState, userInformationState) ||
                const DeepCollectionEquality().equals(
                    other.userInformationState, userInformationState)) &&
            (identical(other.articlesState, articlesState) ||
                const DeepCollectionEquality()
                    .equals(other.articlesState, articlesState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userInformationState) ^
      const DeepCollectionEquality().hash(articlesState);

  @JsonKey(ignore: true)
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {@required
          Option<Either<ApiError, ApiResponse<User>>> userInformationState,
      @required
          Option<Either<ApiError, ApiResponse<List<Article>>>>
              articlesState}) = _$_ProfileState;

  @override
  Option<Either<ApiError, ApiResponse<User>>> get userInformationState;
  @override
  Option<Either<ApiError, ApiResponse<List<Article>>>> get articlesState;
  @override
  @JsonKey(ignore: true)
  _$ProfileStateCopyWith<_ProfileState> get copyWith;
}
