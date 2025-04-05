import 'package:bookly_app/core/utils/app_theme_manager.dart';
import 'package:flutter/material.dart';

import 'features/splash/views/splash_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: AppThemeManager.themeData,
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
