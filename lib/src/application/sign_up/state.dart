part of 'bloc.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    @required Option<Either<ApiError, ApiResponse<User>>> signUpState,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        signUpState: none(),
      );
}
