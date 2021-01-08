import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/favorites/bloc.dart';
import '../../../../injection.dart';
import '../../components/article_item.dart';
import '../../components/loading.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final _bloc = getIt<FavoritesBloc>();

  Future<void> _loadData() async {
    // TODO add dynamic userId
    _bloc.getFavorites('5fef0bef4f9a58ad1cb3f0f5');
    return;
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: RefreshIndicator(
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
        ),
      );
}
