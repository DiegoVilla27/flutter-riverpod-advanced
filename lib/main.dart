import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_advanced/core/di/di.dart';
import 'package:flutter_riverpod_advanced/core/router/router_config.dart';

void main() async {
  await initDI();
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Riverpod Advanced',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurpleAccent,
        brightness: Brightness.dark
      ),
      routerConfig: AppRouterConfig.router,
    );
  }
}
