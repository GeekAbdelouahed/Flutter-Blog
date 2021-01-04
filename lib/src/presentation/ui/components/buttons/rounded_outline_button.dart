import 'package:flutter/material.dart';

class AppRoundedOutlineButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const AppRoundedOutlineButton({
    Key key,
    @required this.onPressed,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => OutlineButton(
        onPressed: onPressed,
        color: Theme.of(context).primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 17),
        borderSide: BorderSide(
          color: Theme.of(context).primaryColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(34),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.button.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
      );
}
