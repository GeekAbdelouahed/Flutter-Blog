import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';
import '../../domain/entities/favorite/favorite.dart';
import '../../domain/favorites/i_favorites_facade.dart';

part 'bloc.freezed.dart';

part 'state.dart';

@injectable
class FavoritesBloc extends Cubit<FavoritesState> {
  final IFavoritesFacade _favoritesFacade;

  FavoritesBloc(this._favoritesFacade) : super(FavoritesState.initial());

  void getFavorites(String userId) async {
    emit(state.copyWith(favoritesState: none()));
    final result = await _favoritesFacade.getFavorites(userId);
    emit(state.copyWith(favoritesState: optionOf(result)));
  }
}
