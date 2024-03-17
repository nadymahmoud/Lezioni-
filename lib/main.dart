import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lezioni/core/routes/app_routers.dart';
import 'package:lezioni/core/utils/app_assets.dart';

void main() {
  runApp(const LezioniApp());
}

class LezioniApp extends StatelessWidget {
  const LezioniApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
