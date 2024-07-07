import 'package:buh_blog_app/core/utils/routes.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const BUHApp());
}

class BUHApp extends StatelessWidget {
  const BUHApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RoutesApp.router,
      debugShowCheckedModeBanner: false,
      title: 'BUH',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}
