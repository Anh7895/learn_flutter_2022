import 'package:shared_preferences/shared_preferences.dart';

class SharePref {
  static final String account = "Account";
  static final String password = "Password";

  Future<bool> putString(String key, String value) async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    return instance.setString(key, value);
  }

  Future<String> _getString(String key) async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    return Future.value(instance.getString(key) ?? "");
  }

  Future<bool> isLogin() async {
    String accountValue = await _getString(account);
    String passwordValue = await _getString(password);
    print('accountValue $accountValue $passwordValue');

    return accountValue == 'ta' && passwordValue == '12345678';
  }
}
