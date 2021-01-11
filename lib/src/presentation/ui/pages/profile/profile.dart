import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/profile/bloc.dart';
import '../../../../infrastructure/core/preferences.dart';
import '../../../../injection.dart';
import '../../components/login.dart';
import '../../components/my_article_item.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin {
  final _preferences = getIt<AppPreferences>();

  // TODO dynamic user id
  final _bloc = getIt<ProfileBloc>()
    ..getArticlesByUser('5ff38ea37bf640cc25f29d6d');

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: _preferences.isLoggedIn
          ? RefreshIndicator(
              onRefresh: () {
                return Future.value();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.only(top: 20, bottom: 30),
                      sliver: SliverToBoxAdapter(
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          onTap: () {},
                          leading: Icon(
                            Icons.account_circle,
                            size: 60,
                          ),
                          title: Text(
                            'Abdelouahed Medjoudja',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            'abdelouahed@gmail.com',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            tooltip: 'Logout',
                            color: Colors.red,
                            icon: Icon(Icons.login),
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Text(
                        'My Articles',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    BlocBuilder<ProfileBloc, ProfileState>(
                      cubit: _bloc,
                      builder: (_, state) => state.articlesState.fold(
                        () => SliverToBoxAdapter(),
                        (a) => a.fold(
                          (l) => SliverToBoxAdapter(),
                          (r) => SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (_, index) => MyArticleItemWidget(
                                article: r.data[index],
                              ),
                              childCount: r.data.length,
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
              ),
            )
          : AskLoginWidget(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
