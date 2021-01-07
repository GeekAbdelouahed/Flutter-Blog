import 'package:flutter/material.dart';

class ClearButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const ClearButtonWidget({Key key, @required this.onPressed, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onPressed,
        child: child ??
            Icon(
              Icons.close,
              color: Colors.white,
            ),
      );
}
