import 'package:bookly_app/core/utils/app_theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_routes.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        theme: AppThemeManager.themeData,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
