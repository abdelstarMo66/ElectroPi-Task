import 'package:flutter/services.dart';
import 'package:mzady/core/themes/color_manager.dart';

class SystemUIConfig {
  static Future<void> configureOverlayStyle({required bool isDark}) async {
    _applyOverlayStyle(isDark: isDark);
  }

  static void updateOverlayStyle({required bool isDark}) {
    _applyOverlayStyle(isDark: isDark);
  }

  static void _applyOverlayStyle({required bool isDark}) {
    final Color bgColor = isDark ? AppColors.black : AppColors.white;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: bgColor,
        statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
        statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,

        systemNavigationBarColor: bgColor,
        systemNavigationBarDividerColor: bgColor,
        systemNavigationBarIconBrightness: isDark
            ? Brightness.light
            : Brightness.dark,
      ),
    );
  }

  static Future<void> setPortraitMode() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  static Future<void> lightHaptic() async {
    await HapticFeedback.lightImpact();
  }
}
