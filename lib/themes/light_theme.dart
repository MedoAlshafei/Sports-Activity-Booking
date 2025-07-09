import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class LightTheme {
  static ThemeData get theme => ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.eduSaBeginnerTextTheme(),
    primaryTextTheme: GoogleFonts.eduSaBeginnerTextTheme(),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFFA00000), // Primary
      onPrimary: Colors.white,
      secondary: Color(0xFFB00000), // Secondary
      onSecondary: Colors.white,
      tertiary: Color(0xFFC00000), // Tertiary
      onTertiary: Colors.white,
      error: Color(0xFFDc3545), // Error
      onError: Colors.white, // Primary Text
      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF333333), // Secondary Text
    ),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFFA00000),
      foregroundColor: Colors.white,
      titleTextStyle: GoogleFonts.eduSaBeginner(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   backgroundColor: theme.colorScheme.primary,
    //   selectedItemColor: theme.colorScheme.primary,
    //   // enableFeedback: true,
    //   // selectedIconTheme: IconThemeData(color: theme.colorScheme.primary),
    // ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(30),
      ),
      backgroundColor: Color(0xFFA00000),
      foregroundColor: Colors.white,
      enableFeedback: true,
      iconSize: 24,
    ),
    extensions: <ThemeExtension<dynamic>>[
      const AppColors(
        accent1: Color(0xFFFF6666),
        accent2: Color(0xFFFF9999),
        accent3: Color(0xFFFFCCCC),
        accent4: Color(0xFFFf3333),
        success: Color(0xFF28a745),
        warning: Color(0xFFffc107),
        info: Color(0xFF17a2b8),
      ),
    ],
  );
}
