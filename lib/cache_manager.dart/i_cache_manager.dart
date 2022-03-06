import 'package:shared_preferences/shared_preferences.dart';

abstract class ICacheManager {
  late SharedPreferences prefs;
  Future<bool> addCacheToken(String id, String token);
  String getCacheToken(String id);
}
