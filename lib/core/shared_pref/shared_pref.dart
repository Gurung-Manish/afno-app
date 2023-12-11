import 'dart:convert';

import 'package:afno_app/features/restaurant/data/models/fav_restaurant_model.dart';
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
  static String fav = "fav";
}

class FavRestaurantService {
  Future<void> setFavoriteStatus(FavRestaurantModel model) async {
    final prefs = await SharedPreferences.getInstance();
    final key = model.id.toString();
    final value = jsonEncode(model.toJson());
    prefs.setString(key, value);
  }

  Future<bool?> getFavoriteStatus(int id) async {
    final prefs = await SharedPreferences.getInstance();
    final key = id.toString();
    final value = prefs.getString(key);
    if (value != null) {
      final model = FavRestaurantModel.fromJson(jsonDecode(value));
      return model.fav;
    }
    return null;
  }
}
