import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';
import '../../domain/entities/user/user.dart';
import '../../domain/sign_in/i_sign_in_facade.dart';

part 'bloc.freezed.dart';

part 'state.dart';

@injectable
class SignInBloc extends Cubit<SignInState> {
  final ISignInFacade _signInFacade;

  SignInBloc(this._signInFacade) : super(SignInState.initial());

  void signIn(User user) async {
    emit(SignInState(signInState: none()));
    final result = await _signInFacade.signIn(user: user);
    emit(SignInState(signInState: optionOf(result)));
  }
}
