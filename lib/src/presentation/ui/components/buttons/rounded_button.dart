import 'package:flutter/material.dart';

class AppRoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final EdgeInsetsGeometry padding;
  final double radius;
  final double elevation;

  const AppRoundedButton({
    Key key,
    @required this.onPressed,
    @required this.title,
    this.padding = const EdgeInsets.symmetric(horizontal: 30, vertical: 17),
    this.radius = 34,
    this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RaisedButton(
        elevation: elevation,
        onPressed: onPressed,
        color: Theme.of(context).primaryColor,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.button.copyWith(
                color: Colors.white,
              ),
        ),
      );
}
