import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';
import '../../domain/entities/user/user.dart';
import '../../domain/sign_up/i_sign_up_facade.dart';

part 'bloc.freezed.dart';

part 'state.dart';

@injectable
class SignUpBloc extends Cubit<SignUpState> {
  final ISignUpFacade _iSignUpFacade;

  SignUpBloc(this._iSignUpFacade) : super(SignUpState.initial());

  void signUp(User user) async {
    emit(SignUpState(signUpState: none()));
    final result = await _iSignUpFacade.signUp(user: user);
    emit(SignUpState(signUpState: optionOf(result)));
  }
}
