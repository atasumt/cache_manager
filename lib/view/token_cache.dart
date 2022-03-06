import 'package:cache_manager/cache_manager.dart/cache_manager.dart';
import 'package:flutter/material.dart';

class TokenCache extends StatefulWidget {
  TokenCache({Key? key}) : super(key: key);

  @override
  State<TokenCache> createState() => _TokenCacheState();
}

class _TokenCacheState extends State<TokenCache> {
  String token = CacheManager.instance.getCacheToken('2434');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Token Ekranı'),
      ),
      body: Center(child: Text(token)),
    );
  }
}
