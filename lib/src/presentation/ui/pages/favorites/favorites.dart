import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/favorites/bloc.dart';
import '../../../../infrastructure/core/preferences.dart';
import '../../../../injection.dart';
import '../../components/article_item.dart';
import '../../components/loading.dart';
import '../../components/login.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final _bloc = getIt<FavoritesBloc>();

  final _preferences = getIt<AppPreferences>();

  String _userId;

  Future<void> _loadData() async {
    _bloc.getFavorites(_userId);
    return Future.value();
  }

  @override
  void initState() {
    super.initState();

    if (_preferences.isLoggedIn) {
      _userId = _preferences.userId;
      _loadData();
    }
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: _preferences.isLoggedIn
            ? RefreshIndicator(
                onRefresh: _loadData,
                child: BlocBuilder<FavoritesBloc, FavoritesState>(
                  cubit: _bloc,
                  builder: (_, state) => state.favoritesState.fold(
                    () => LoadingWidget(),
                    (either) => either.fold(
                      (apiError) => Text(apiError.message ?? 'Unknown error!'),
                      (result) => ListView.builder(
                        padding: const EdgeInsets.only(
                          top: 20,
                          bottom: 100,
                        ),
                        itemCount: result.data.length,
                        itemBuilder: (_, index) => ArticleItemWidget(
                          article: result.data[index].article,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : AskLoginWidget(),
      );
}
