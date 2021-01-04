// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

// ignore: unused_element
  _SignInState call(
      {@required Option<Either<ApiError, ApiResponse>> signInState}) {
    return _SignInState(
      signInState: signInState,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  Option<Either<ApiError, ApiResponse>> get signInState;

  $SignInStateCopyWith<SignInState> get copyWith;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call({Option<Either<ApiError, ApiResponse>> signInState});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object signInState = freezed,
  }) {
    return _then(_value.copyWith(
      signInState: signInState == freezed
          ? _value.signInState
          : signInState as Option<Either<ApiError, ApiResponse>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<Either<ApiError, ApiResponse>> signInState});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object signInState = freezed,
  }) {
    return _then(_SignInState(
      signInState: signInState == freezed
          ? _value.signInState
          : signInState as Option<Either<ApiError, ApiResponse>>,
    ));
  }
}

/// @nodoc
class _$_SignInState implements _SignInState {
  const _$_SignInState({@required this.signInState})
      : assert(signInState != null);

  @override
  final Option<Either<ApiError, ApiResponse>> signInState;

  @override
  String toString() {
    return 'SignInState(signInState: $signInState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInState &&
            (identical(other.signInState, signInState) ||
                const DeepCollectionEquality()
                    .equals(other.signInState, signInState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(signInState);

  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
          {@required Option<Either<ApiError, ApiResponse>> signInState}) =
      _$_SignInState;

  @override
  Option<Either<ApiError, ApiResponse>> get signInState;
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith;
}
