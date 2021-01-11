import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../routes/routes.dart';
import 'buttons/rounded_button.dart';
import 'buttons/rounded_outline_button.dart';

class AskLoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/images/shield.svg',
              width: 200,
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 200,
              child: AppRoundedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.signIn);
                },
                title: 'SIGN IN',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: AppRoundedOutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.signUp);
                },
                title: 'SIGN UP',
              ),
            ),
          ],
        ),
      );
}
