import 'package:flutter/material.dart';

import 'validators.dart' as validators;

extension StringExtensions on String {
  bool get isValidEmail => validators.isValidEmail(this);

  bool get isValidPassword => validators.isValidPassword(this);
}

extension BuildContextExtensions on BuildContext {
  Future<T> showAppDialog<T>({
    @required Widget child,
    bool isDismissible = true,
  }) =>
      showDialog(
        context: this,
        barrierDismissible: isDismissible,
        builder: (_) => WillPopScope(
          onWillPop: () async {
            return isDismissible;
          },
          child: child,
        ),
      );
}
