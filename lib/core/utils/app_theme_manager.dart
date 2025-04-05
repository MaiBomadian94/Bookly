import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class AppThemeManager {
  static ThemeData themeData = ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: AppColors.primaryColor,
      brightness: Brightness.dark);
}
