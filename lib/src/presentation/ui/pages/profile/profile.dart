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
import '../../components/loading.dart';
import '../../components/login.dart';
import '../../components/my_article_item.dart';
import 'widgets/widgets.dart';

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

  void _loadData() {
    _bloc
      ..getUserInformation(_userId)
      ..getArticlesByUser(_userId);
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
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: _preferences.isLoggedIn
          ? BlocBuilder<ProfileBloc, ProfileState>(
              cubit: _bloc,
              builder: (_, state) => RefreshIndicator(
                onRefresh: () {
                  _loadData();
                  return Future.value();
                },
                child: CustomScrollView(
                  slivers: [
                    state.userInformationState.fold(
                      () => SliverToBoxAdapter(
                        child: LoadingWidget(),
                      ),
                      (either) => either.fold(
                        (apiError) => SliverToBoxAdapter(),
                        (result) => SliverPadding(
                          padding: const EdgeInsets.only(bottom: 30),
                          sliver: SliverToBoxAdapter(
                            child: HeaderWidget(
                              onLogout: _askLogout,
                              user: result.data,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      sliver: SliverToBoxAdapter(
                        child: Text(
                          'My Articles',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    state.articlesState.fold(
                      () => SliverToBoxAdapter(
                        child: LoadingWidget(),
                      ),
                      (either) => either.fold(
                        (apiError) => SliverToBoxAdapter(),
                        (result) => SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (_, index) => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: MyArticleItemWidget(
                                article: result.data[index],
                              ),
                            ),
                            childCount: result.data.length,
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
