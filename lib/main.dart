import 'package:cache_manager/cache_manager.dart/cache_manager.dart';
import 'package:cache_manager/view/login.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheManager.instance.initShared();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Login(),
    );
  }
}
