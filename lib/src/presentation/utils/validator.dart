abstract class AppValidator {
  static const _pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static final _regex = RegExp(_pattern);

  static bool isValidEmail(String value) => _regex.hasMatch(value);

  static bool isValidPassword(String value) => value.length >= 5;
}
