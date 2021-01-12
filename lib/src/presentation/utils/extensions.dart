import 'package:flutter/material.dart';

import 'validator.dart';

extension StringExtensions on String {
  bool get isValidEmail => AppValidator.isValidEmail(this);

  bool get isValidPassword => AppValidator.isValidPassword(this);
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
