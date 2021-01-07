import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/articles/bloc.dart';
import '../../../components/article_item.dart';

class ArticlesWidget extends StatefulWidget {
  @override
  _ArticlesWidgetState createState() => _ArticlesWidgetState();
}

class _ArticlesWidgetState extends State<ArticlesWidget> {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ArticlesBloc, ArticlesState>(
        builder: (context, state) => state.articlesState.fold(
          () => SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          (either) => either.fold(
            (apiError) => SliverToBoxAdapter(
              child: Text(apiError.message ?? 'Unknown Error!'),
            ),
            (result) => SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) => ArticleItemWidget(
                  article: result.data[index],
                ),
                childCount: result.data.length,
              ),
            ),
          ),
        ),
      );
}
