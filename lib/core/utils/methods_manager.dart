import 'dart:ui';

import 'package:flutter/material.dart';

import '../di/dependency_injection.dart';
import '../services/local/secure_storage_manager.dart';
import '../services/local/secure_utils.dart';
import 'enums_manager.dart';

class MethodsManager {
  static Future<Locale> getLocate() async {
    final String? lang = await getIt<SecureStorageManager>().getData(
      key: SecureKeys.lang,
    );
    late Locale locale;

    if (lang == null) {
      locale = Locale(PlatformDispatcher.instance.locale.languageCode);
    } else {
      locale = Locale(lang);
    }

    return locale;
  }

  static Future<bool> isDarkTheme() async {
    final String? theme = await getIt<SecureStorageManager>().getData(
      key: SecureKeys.theme,
    );

    if (theme == null) {
      return WidgetsBinding.instance.platformDispatcher.platformBrightness ==
          Brightness.dark;
    } else {
      return theme == ThemeEnum.dark.toString();
    }
  }
}
