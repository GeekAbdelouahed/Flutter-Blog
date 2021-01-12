import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/profile/bloc.dart';
import '../../../../infrastructure/core/preferences.dart';
import '../../../../injection.dart';
import '../../../routes/routes.dart';
import '../../../utils/extensions.dart';
import '../../components/buttons/rounded_button.dart';
import '../../components/dialogs/question.dart';
import '../../components/dialogs/waiting.dart';
import '../../components/login.dart';
import '../../components/my_article_item.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin {
  final _bloc = getIt<ProfileBloc>();

  final _preferences = getIt<AppPreferences>();

  String _userId;

  void _logout() async {
    context.showAppDialog(
      isDismissible: false,
      child: AppDialogWaiting(),
    );
    await _preferences.clear();
    Navigator.of(context).pushNamedAndRemoveUntil(
      AppRoutes.onBoarding,
      ModalRoute.withName('/'),
    );
  }

  void _askLogout() {
    context.showAppDialog(
      child: AppDialogQuestion(
        title: 'Logout',
        question: 'Are you sure you want to leave us?',
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('No'),
          ),
          AppRoundedButton(
            onPressed: () {
              Navigator.pop(context);
              _logout();
            },
            padding: const EdgeInsets.symmetric(horizontal: 20),
            radius: 5,
            elevation: 0,
            title: 'Yes',
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _userId = _preferences.userId;
    _bloc.getArticlesByUser(_userId);
  }

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
                            onPressed: _askLogout,
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
