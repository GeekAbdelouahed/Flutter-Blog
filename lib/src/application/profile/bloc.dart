import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';
import '../../domain/entities/article/article.dart';
import '../../domain/entities/user/user.dart';
import '../../domain/profile/i_profile_facade.dart';

part 'bloc.freezed.dart';

part 'state.dart';

@injectable
class ProfileBloc extends Cubit<ProfileState> {
  final IProfileFacade _profileFacade;

  ProfileBloc(this._profileFacade) : super(ProfileState.initial());

  void getUserInformation(String userId) async {
    emit(state.copyWith(userInformationState: none()));
    final result = await _profileFacade.getUserInformation(userId);
    emit(state.copyWith(userInformationState: optionOf(result)));
  }

  void getArticlesByUser(String userId) async {
    emit(state.copyWith(articlesState: none()));
    final result = await _profileFacade.getArticlesByUser(userId);
    emit(state.copyWith(articlesState: optionOf(result)));
  }
}
