import 'package:flutter/material.dart';

class AppRoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const AppRoundedButton({
    Key key,
    @required this.onPressed,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RaisedButton(
        onPressed: onPressed,
        color: Theme.of(context).primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 17),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(34),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.button.copyWith(
                color: Colors.white,
              ),
        ),
      );
}
