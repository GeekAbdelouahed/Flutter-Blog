import 'validator.dart';

extension StringExtensions on String {
  bool get isValidEmail => AppValidator.isValidEmail(this);

  bool get isValidPassword => AppValidator.isValidPassword(this);
}
