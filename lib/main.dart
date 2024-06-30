import '/fetures/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BUHApp());
}

class BUHApp extends StatelessWidget {
  const BUHApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BUH',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const SplashView(),
    );
  }
}

