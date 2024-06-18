import 'package:flutter/material.dart';
import 'package:my_portfolio/routing/app_router.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      title: 'Harish Kunchala',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
