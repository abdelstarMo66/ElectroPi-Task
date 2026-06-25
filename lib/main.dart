import 'dart:async';
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/app.dart';
import 'app/cubit/bloc_observer.dart';
import 'core/di/dependency_injection.dart';
import 'core/services/local/app_services.dart';
import 'core/utils/methods_manager.dart';
import 'translations/codegen_loader.g.dart';

Future<void> main() async {
  // final WidgetsBinding widgetsBinding =
  //     WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();

  final bool isDark = await MethodsManager.isDarkTheme();
  final Locale locale = await MethodsManager.getLocate();

  await Future.wait([
    ScreenUtil.ensureScreenSize(),
    SystemUIConfig.setPortraitMode(),
    EasyLocalization.ensureInitialized(),
    SystemUIConfig.configureOverlayStyle(isDark: isDark),
  ]);

  Bloc.observer = MyBlocObserver();

  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    debugPrint('Flutter Error: ${details.exception}');
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    debugPrint('Global Error: $error');
    return true;
  };

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [Locale('en'), Locale('ar')],
      fallbackLocale: locale,
      startLocale: locale,
      assetLoader: const CodegenLoader(),
      child: Mzady(initialIsDark: isDark),
    ),
  );
}
