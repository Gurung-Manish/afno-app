import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  // Store token
  static Future<bool> storeToken(String key, String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, token);
  }

  static Future<bool> clearAll() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(SharedPrefKey.userData, "");
    prefs.setString(SharedPrefKey.allUser, "");

    return prefs.clear();
  }

// Get token
  static Future<String> getToken(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? "";
  }

  // static String token = "token";
}

class SharedPrefKey {
  static String token = "token";
  static String theme = "theme";
  static String userData = "userData";
  static String allUser = "allUser";
  static String firstLogin = "firstLogin";
  static String restaurants = "restaurants";
}
