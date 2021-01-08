import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/article/article.dart';
import '../ui/pages/article/article.dart';
import '../ui/pages/home/home.dart';
import '../ui/pages/on_boarding/on_boarding.dart';
import '../ui/pages/sign_in/sign_in.dart';
import '../ui/pages/sign_up/sign_up.dart';
import 'routes.dart';

abstract class AppRoutesGenerator {
  static Route<dynamic> generateRoute(RouteSettings params) {
    var screen;
    var args = params.arguments;

    switch (params.name) {
      case AppRoutes.onBoarding:
        screen = OnBoardingPage();
        break;
      case AppRoutes.signUp:
        screen = SignUpPage();
        break;

      case AppRoutes.signIn:
        screen = SignInPage();
        break;

      case AppRoutes.home:
        screen = HomePage();
        break;

      case AppRoutes.articleDetails:
        if (args is Article)
          screen = ArticleDetails(article: args);
        else
          screen = _errorScreen(params.name);
        break;

      default:
        screen = _errorScreen(params.name);
    }

    return CupertinoPageRoute(
      builder: (_) => screen,
    );
  }

  static Widget _errorScreen(String route) => Scaffold(
        body: Text('$route : Route Not Found'),
      );
}
