import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// App color palette
class AppColors {
  // Primary Colors (Indigo)
  static const Color primary = Color(0xFF6366F1);
  static const Color primaryDark = Color(0xFF4F46E5);
  static const Color primaryLight = Color(0xFF818CF8);

  // Secondary Colors (Emerald)
  static const Color secondary = Color(0xFF10B981);
  static const Color secondaryDark = Color(0xFF059669);

  // Accent Colors
  static const Color accent = Color(0xFFF59E0B);
  static const Color success = Color(0xFF10B981);
  static const Color error = Color(0xFFEF4444);
  static const Color warning = Color(0xFFF59E0B);

  // Light Theme
  static const Color lightBg = Color(0xFFFAFAFA);
  static const Color lightCard = Colors.white;
  static const Color lightText = Color(0xFF1F2937);
  static const Color lightTextSecondary = Color(0xFF6B7280);
  static const Color lightDivider = Color(0xFFE5E7EB);

  // Dark Theme
  static const Color darkBg = Color(0xFF0F172A);
  static const Color darkCard = Color(0xFF1E293B);
  static const Color darkText = Color(0xFFF1F5F9);
  static const Color darkTextSecondary = Color(0xFFCBD5E1);
}

/// App Text Styles
class AppTextStyles {
  // Display
  static TextStyle displayLarge(BuildContext context) => GoogleFonts.poppins(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: Theme.of(context).textTheme.displayLarge?.color,
      );

  static TextStyle displayMedium(BuildContext context) => GoogleFonts.poppins(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: Theme.of(context).textTheme.displayMedium?.color,
      );

  // Headline
  static TextStyle headlineLarge(BuildContext context) => GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Theme.of(context).textTheme.headlineLarge?.color,
      );

  static TextStyle headlineMedium(BuildContext context) => GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).textTheme.headlineMedium?.color,
      );

  static TextStyle headlineSmall(BuildContext context) => GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).textTheme.headlineSmall?.color,
      );

  // Body
  static TextStyle bodyLarge(BuildContext context) => GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Theme.of(context).textTheme.bodyLarge?.color,
      );

  static TextStyle bodyMedium(BuildContext context) => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Theme.of(context).textTheme.bodyMedium?.color,
      );

  static TextStyle bodySmall(BuildContext context) => GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Theme.of(context).textTheme.bodySmall?.color,
      );

  // Label
  static TextStyle labelLarge(BuildContext context) => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).textTheme.labelLarge?.color,
      );

  static TextStyle labelSmall(BuildContext context) => GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Theme.of(context).textTheme.labelSmall?.color,
      );
}

/// App Theme configuration
class AppTheme {
  /// Get light theme
  static ThemeData lightTheme() => _lightTheme();

  /// Get dark theme
  static ThemeData darkTheme() => _darkTheme();
}

/// Light Theme
ThemeData _lightTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.lightBg,
      error: AppColors.error,
    ),
    scaffoldBackgroundColor: AppColors.lightBg,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.lightCard,
      surfaceTintColor: AppColors.lightCard,
      toolbarHeight: 64,
      centerTitle: false,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppColors.lightText,
      ),
      iconTheme: const IconThemeData(color: AppColors.lightText),
    ),
    cardTheme: CardThemeData(
      color: AppColors.lightCard,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: AppColors.lightDivider, width: 1),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary, width: 1.5),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFFF3F4F6),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.lightDivider),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.lightDivider),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
      labelStyle: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.lightTextSecondary,
      ),
    ),
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      textColor: AppColors.lightText,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.lightText,
      ),
      subtitleTextStyle: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.lightTextSecondary,
      ),
    ),
  );
}

/// Dark Theme
ThemeData _darkTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryLight,
      secondary: AppColors.secondary,
      surface: AppColors.darkBg,
      error: AppColors.error,
    ),
    scaffoldBackgroundColor: AppColors.darkBg,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.darkCard,
      surfaceTintColor: AppColors.darkCard,
      toolbarHeight: 64,
      centerTitle: false,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppColors.darkText,
      ),
      iconTheme: const IconThemeData(color: AppColors.darkText),
    ),
    cardTheme: CardThemeData(
      color: AppColors.darkCard,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: Color(0xFF334155), width: 1),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryLight,
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF1E293B),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF334155)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF334155)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primaryLight, width: 2),
      ),
      labelStyle: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.darkTextSecondary,
      ),
    ),
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      textColor: AppColors.darkText,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.darkText,
      ),
      subtitleTextStyle: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.darkTextSecondary,
      ),
    ),
  );
}
