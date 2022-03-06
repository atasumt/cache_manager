import 'package:cache_manager/cache_manager.dart/i_cache_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheManager implements ICacheManager {
  static CacheManager? _instance;
  static CacheManager get instance {
    if (_instance != null) return _instance!;
    _instance = CacheManager._init();
    return _instance!;
  }

  @override
  late SharedPreferences prefs;
  CacheManager._init() {
    initShared();
  }

  Future<void> initShared() async {
    prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  @override
  Future<bool> addCacheToken(String id, String token) {
    return prefs.setString(id, token);
  }

  @override
  String getCacheToken(String id) {
    String token = prefs.getString(id) ?? '';
    return token;
  }
}
