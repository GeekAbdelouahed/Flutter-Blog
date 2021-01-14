import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/articles/bloc.dart';
import '../../../../infrastructure/core/preferences.dart';
import '../../../../injection.dart';
import '../../../routes/routes.dart';
import 'widgets/widgets.dart';

class ArticlesPage extends StatefulWidget {
  @override
  _ArticlesPageState createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage>
    with AutomaticKeepAliveClientMixin {
  final _bloc = getIt<ArticlesBloc>();

  final _preferences = getIt<AppPreferences>();

  void _loadData() {
    _bloc
      ..getCategories()
      ..getArticles();
  }

  @override
  void initState() {
    super.initState();

    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () {
            _loadData();
            return Future.value();
          },
          child: BlocProvider<ArticlesBloc>(
            create: (_) => _bloc,
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 20,
                    right: 20,
                    bottom: 50,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Hi There 👋 📰',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        if (_preferences.isLoggedIn)
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              child: IconButton(
                                tooltip: 'Add Article',
                                onPressed: () {
                                  Navigator.of(context).pushNamed(
                                    AppRoutes.articleCreate,
                                  );
                                },
                                icon: Icon(Icons.post_add),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(bottom: 10),
                  sliver: SliverToBoxAdapter(
                    child: CategoriesWidget(
                      onSelectCategory: (category) {
                        if (category != null)
                          _bloc.getArticlesByCategory(category.id);
                        else
                          _bloc.getArticles();
                      },
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(bottom: 20),
                  sliver: ArticlesWidget(),
                ),
                SliverToBoxAdapter(
                  child: const SizedBox(
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
