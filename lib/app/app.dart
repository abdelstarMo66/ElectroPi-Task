import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mzady/app/cubit/app_cubit.dart';
import 'package:mzady/app/cubit/app_states.dart';
import 'package:mzady/core/di/dependency_injection.dart';

import '../core/routing/go_router_service.dart';
import '../core/themes/theme_manager.dart';

class Mzady extends StatelessWidget {
  const Mzady({super.key, required this.initialIsDark});

  final bool initialIsDark;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) =>
          getIt<AppCubit>()..changeAppThemeMode(fromCache: initialIsDark),
      child: BlocBuilder<AppCubit, AppStates>(
        buildWhen: (previous, current) => current.maybeMap(
          successChangeThemeMode: (_) => true,
          orElse: () => false,
        ),
        builder: (context, state) {
          final isDark = context.read<AppCubit>().isDarkMode;

          return ScreenUtilInit(
            minTextAdapt: true,
            designSize: const Size(375, 812),
            splitScreenMode: true,
            builder: (context, child) => MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'mzady',
              themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
              theme: ThemeManager.light,
              darkTheme: ThemeManager.dark,
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,
              locale: context.locale,
              routerConfig: GoRouterService.router,
            ),
          );
        },
      ),
    );
  }
}
