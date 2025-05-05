import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeManager {
  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: AppColors.primaryColor,
    brightness: Brightness.dark,
    textTheme: GoogleFonts.montserratTextTheme(
      ThemeData.dark().textTheme,
    ),
  );
}
