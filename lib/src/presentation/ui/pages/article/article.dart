import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../application/article/bloc.dart';
import '../../../../domain/entities/article/article.dart';
import '../../../../infrastructure/core/preferences.dart';
import '../../../../injection.dart';
import '../../../routes/routes.dart';
import '../../components/loading.dart';

class ArticleDetails extends StatefulWidget {
  final Article article;

  const ArticleDetails({Key key, @required this.article}) : super(key: key);

  @override
  _ArticleDetailsState createState() => _ArticleDetailsState();
}

class _ArticleDetailsState extends State<ArticleDetails> {
  final _bloc = getIt<ArticleBloc>();
  final _preferences = getIt<AppPreferences>();

  // TODO  dynamic user id
  final _userId = '5fef0bef4f9a58ad1cb3f0f5';

  final _pageController = PageController();

  bool _isFavorite = false;

  void _addRemoveFavorite() {
    if (_isFavorite)
      _bloc.removeFavorite(widget.article.id, _userId);
    else
      _bloc.addFavorite(widget.article.id, _userId);
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  void initState() {
    super.initState();
    _bloc.getArticleDetails(widget.article.id, userId: _userId);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocConsumer<ArticleBloc, ArticleState>(
            cubit: _bloc,
            listener: (_, state) => state.articleState.fold(
                  () => null,
                  (either) => either.fold(
                    (_) => null,
                    (result) => _isFavorite = result.data.isFavorite,
                  ),
                ),
            builder: (_, state) => state.articleState.fold(
                  () => LoadingWidget(),
                  (either) => either.fold(
                    (apiError) => Center(
                      child: Text(apiError.message ?? 'Unknown error!'),
                    ),
                    (result) => CustomScrollView(
                      slivers: [
                        SliverAppBar(
                          pinned: true,
                          expandedHeight:
                              MediaQuery.of(context).size.width / 1.5,
                          flexibleSpace: FlexibleSpaceBar(
                            background: Stack(
                              children: [
                                Positioned.fill(
                                  child: PageView.builder(
                                    controller: _pageController,
                                    itemCount: widget.article.images.length,
                                    itemBuilder: (_, index) =>
                                        CachedNetworkImage(
                                      imageUrl:
                                          '${AppRoutes.host}files/articles/${widget.article.id}/${widget.article.images[index]}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: SmoothPageIndicator(
                                      controller: _pageController,
                                      count: widget.article.images.length,
                                      effect: WormEffect(
                                        dotHeight: 10,
                                        dotWidth: 10,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SliverFillRemaining(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 30,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        widget.article.title,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    InkWell(
                                      onTap: _addRemoveFavorite,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey[200],
                                        child: Icon(
                                          _isFavorite
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: Theme.of(context).accentColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  widget.article.content,
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
      );
}
