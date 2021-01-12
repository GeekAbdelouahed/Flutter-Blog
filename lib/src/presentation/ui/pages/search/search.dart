import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/search/bloc.dart';
import '../../../../injection.dart';
import '../../components/article_item.dart';
import '../../components/loading.dart';
import '../../components/text_fields/search_field.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin {
  final _bloc = getIt<SearchBloc>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 180,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 40),
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: SearchFieldWidget(
                  onChanged: _bloc.searchArticles,
                  autoFocus: false,
                ),
              ),
            ),
            leading: const SizedBox(),
          ),
          BlocBuilder<SearchBloc, SearchState>(
            cubit: _bloc,
            builder: (_, state) => state.searchState.fold(
              () => state.isSearching
                  ? SliverFillRemaining(
                      child: LoadingWidget(),
                    )
                  : SliverFillRemaining(
                      child: const SizedBox(),
                    ),
              (either) => either.fold(
                (apiError) => const SizedBox(),
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
          ),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 100),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
