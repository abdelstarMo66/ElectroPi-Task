import 'package:flutter/material.dart';
import 'package:mzady/core/themes/color_manager.dart';
import 'package:mzady/core/utils/size_manager.dart';

import 'style_manager.dart';

class ThemeManager {
  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: _lightColorScheme,
    textTheme: _buildTextTheme(_lightColorScheme),
    appBarTheme: _buildAppBarTheme(_lightColorScheme),
    bottomNavigationBarTheme: _buildBottomNavTheme(_lightColorScheme),
  );

  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.black,
    colorScheme: _darkColorScheme,
    textTheme: _buildTextTheme(_darkColorScheme),
    appBarTheme: _buildAppBarTheme(_darkColorScheme),
    bottomNavigationBarTheme: _buildBottomNavTheme(_darkColorScheme),
  );

  static const ColorScheme _lightColorScheme = ColorScheme.light(
    primary: Color(0xFF0B8C7D),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFE0F5F2),
    onPrimaryContainer: Color(0xFF043D38),

    secondary: Color(0xFF1E8449),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFE9F7EF),
    onSecondaryContainer: Color(0xFF0D4024),

    tertiary: Color(0xFFC17D0E),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFFF3DC),
    onTertiaryContainer: Color(0xFF5C3A00),

    error: Color(0xFFC0392B),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFDECEA),
    onErrorContainer: Color(0xFF7B1211),

    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF1A1A1A),
    surfaceContainerLow: Color(0xFFFAFCFC),
    surfaceContainerHigh: Color(0xFFE0F5F2),
    onSurfaceVariant: Color(0xFF4A6663),

    outline: Color(0xFFA8CECA),
    outlineVariant: Color(0xFFC8E8E5),
  );

  static const ColorScheme _darkColorScheme = ColorScheme.dark(
    primary: Color(0xFF0FBFAA),
    onPrimary: Color(0xFF001F1C),
    primaryContainer: Color(0xFF064A43),
    onPrimaryContainer: Color(0xFF7FDED4),

    secondary: Color(0xFF58D68D),
    onSecondary: Color(0xFF0A2E1A),
    secondaryContainer: Color(0xFF0D3D22),
    onSecondaryContainer: Color(0xFFA3E4C0),

    tertiary: Color(0xFFFAA64A),
    onTertiary: Color(0xFF3A1500),
    tertiaryContainer: Color(0xFF5C2E00),
    onTertiaryContainer: Color(0xFFFFCC95),

    error: Color(0xFFE57373),
    onError: Color(0xFF3A0A0A),
    errorContainer: Color(0xFF5C1A1A),
    onErrorContainer: Color(0xFFFFB3B3),

    surface: Color(0xFF0F2422),
    onSurface: Color(0xFFE0F5F2),
    surfaceContainerLow: Color(0xFF081614),
    surfaceContainerHigh: Color(0xFF163330),
    onSurfaceVariant: Color(0xFF7FABA8),

    outline: Color(0xFF1E4A47),
    outlineVariant: Color(0xFF133330),
  );

  static TextTheme _buildTextTheme(ColorScheme cs) => TextTheme(
    displayLarge: TextStyleManager.font24Bold(color: cs.onSurface),
    displayMedium: TextStyleManager.font20Bold(color: cs.onSurface),
    displaySmall: TextStyleManager.font18Bold(color: cs.onSurface),
    headlineLarge: TextStyleManager.font16Bold(color: cs.onSurface),
    headlineMedium: TextStyleManager.font16SemiBold(color: cs.onSurface),
    headlineSmall: TextStyleManager.font16Medium(color: cs.onSurface),
    titleLarge: TextStyleManager.font14Bold(color: cs.onSurface),
    titleMedium: TextStyleManager.font14SemiBold(color: cs.onSurface),
    titleSmall: TextStyleManager.font14Medium(color: cs.onSurface),
    bodyLarge: TextStyleManager.font14Regular(color: cs.onSurface),
    bodyMedium: TextStyleManager.font12SemiBold(color: cs.onSurface),
    bodySmall: TextStyleManager.font12Regular(color: cs.onSurface),
    labelLarge: TextStyleManager.font12Medium(color: cs.onSurface),
    labelMedium: TextStyleManager.font10Bold(color: cs.onSurface),
    labelSmall: TextStyleManager.font10Regular(color: cs.onSurface),
  );

  static AppBarTheme _buildAppBarTheme(ColorScheme cs) => AppBarTheme(
    backgroundColor: cs.surfaceContainerLow,
    foregroundColor: cs.onSurface,
    surfaceTintColor: Colors.transparent,
    shadowColor: Colors.transparent,
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
  );

  static BottomNavigationBarThemeData _buildBottomNavTheme(ColorScheme cs) =>
      BottomNavigationBarThemeData(
        backgroundColor: cs.surfaceContainerLow,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: cs.primary,
        unselectedItemColor: cs.onSurfaceVariant,
        selectedIconTheme: IconThemeData(size: AppSize.i28, color: cs.primary),
        unselectedIconTheme: IconThemeData(
          size: AppSize.i24,
          color: cs.onSurfaceVariant,
        ),
        showUnselectedLabels: false,
        showSelectedLabels: true,
      );
}
