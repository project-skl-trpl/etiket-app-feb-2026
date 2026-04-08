import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasource {
  static const _keyToken = 'token';

  Future<void> saveToken(String token) async {
    try {
      // print(token);
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.setString(_keyToken, token);
    } catch (e) {
      // print(e);
      throw Exception(e.toString());
    }
  }

  Future<String?> getToken() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(_keyToken);
  }

  Future<void> removeToken() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.remove(_keyToken);
  }
}
