import 'package:flutter/material.dart';
import 'package:lezioni/core/routes/app_routers.dart';

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
