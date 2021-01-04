import 'package:shared_preferences/shared_preferences.dart';

abstract class AppPreferencesKeys {
  static const String TOKEN = 'token';
  static const String USER_ID = 'user_id';
}

class AppPreferences {
  static Future<AppPreferences> get instance async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return AppPreferences(sharedPreferences);
  }

  AppPreferences(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  Future<bool> setString(String key, String value) =>
      sharedPreferences.setString(key, value);

  String getString(String key, {String def}) =>
      sharedPreferences.getString(key) ?? def;

  String get userId => getString(AppPreferencesKeys.USER_ID);

  String get token => getString(AppPreferencesKeys.TOKEN);

  bool get isLoggedIn =>
      (getString(AppPreferencesKeys.TOKEN)?.isNotEmpty ?? false) &&
      (getString(AppPreferencesKeys.USER_ID)?.isNotEmpty ?? false);

  Future<bool> clear() => sharedPreferences.clear();
}
