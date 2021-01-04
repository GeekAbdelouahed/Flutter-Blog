import 'package:flutter/material.dart';

import '../../../routes/routes.dart';
import '../../components/buttons/rounded_button.dart';
import '../../components/buttons/rounded_outline_button.dart';
import 'widgets/widgets.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final ValueNotifier<int> indexNotifier = ValueNotifier(0);

  final List<Widget> _pages = [
    PageWidget(
      image: 'assets/images/space-man.svg',
      title: 'Let\'s Get Started',
      subtitle:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    ),
    PageWidget(
      image: 'assets/images/woman-laugh.svg',
      title: 'Let\'s Get Started',
      subtitle:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    ),
    PageWidget(
      image: 'assets/images/identity.svg',
      title: 'Let\'s Get Started',
      subtitle:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                children: [
                  Expanded(
                    flex: 10,
                    child: PageView(
                      onPageChanged: (index) => indexNotifier.value = index,
                      children: _pages,
                    ),
                  ),
                  const Spacer(),
                  IndicatorWidget(
                    length: _pages.length,
                    indexNotifier: indexNotifier,
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppRoundedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.signIn);
                    },
                    title: 'Sign in',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppRoundedOutlineButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.signUp);
                    },
                    title: 'Sign up',
                  ),
                ],
              ),
            ),
            const Spacer(),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(AppRoutes.home);
              },
              child: Text(
                'Getting Started',
                style: Theme.of(context).textTheme.button.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ),
            const Spacer(),
          ],
        ),
      );
}
