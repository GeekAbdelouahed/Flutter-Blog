// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

// ignore: unused_element
  _SignUpState call(
      {@required Option<Either<ApiError, ApiResponse>> signUpState}) {
    return _SignUpState(
      signUpState: signUpState,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  Option<Either<ApiError, ApiResponse>> get signUpState;

  $SignUpStateCopyWith<SignUpState> get copyWith;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call({Option<Either<ApiError, ApiResponse>> signUpState});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object signUpState = freezed,
  }) {
    return _then(_value.copyWith(
      signUpState: signUpState == freezed
          ? _value.signUpState
          : signUpState as Option<Either<ApiError, ApiResponse>>,
    ));
  }
}

/// @nodoc
abstract class _$SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(
          _SignUpState value, $Res Function(_SignUpState) then) =
      __$SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<Either<ApiError, ApiResponse>> signUpState});
}

/// @nodoc
class __$SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(
      _SignUpState _value, $Res Function(_SignUpState) _then)
      : super(_value, (v) => _then(v as _SignUpState));

  @override
  _SignUpState get _value => super._value as _SignUpState;

  @override
  $Res call({
    Object signUpState = freezed,
  }) {
    return _then(_SignUpState(
      signUpState: signUpState == freezed
          ? _value.signUpState
          : signUpState as Option<Either<ApiError, ApiResponse>>,
    ));
  }
}

/// @nodoc
class _$_SignUpState implements _SignUpState {
  const _$_SignUpState({@required this.signUpState})
      : assert(signUpState != null);

  @override
  final Option<Either<ApiError, ApiResponse>> signUpState;

  @override
  String toString() {
    return 'SignUpState(signUpState: $signUpState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpState &&
            (identical(other.signUpState, signUpState) ||
                const DeepCollectionEquality()
                    .equals(other.signUpState, signUpState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(signUpState);

  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
          {@required Option<Either<ApiError, ApiResponse>> signUpState}) =
      _$_SignUpState;

  @override
  Option<Either<ApiError, ApiResponse>> get signUpState;
  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith;
}
