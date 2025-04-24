import 'package:bookly_app/core/utils/app_theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/route_generator.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      child: MaterialApp(
        theme: AppThemeManager.themeData,
        debugShowCheckedModeBanner: false,
        navigatorKey: AppNavigator.navigatorKey,
        onGenerateRoute: AppNavigator.generateRoute,
      ),
    );
  }
}
