import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzady/core/di/dependency_injection.dart';
import 'package:mzady/core/services/local/app_services.dart';
import 'package:mzady/core/services/local/secure_storage_manager.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/enums_manager.dart';
import 'package:mzady/features/discover/ui/discover_screen.dart';
import 'package:mzady/features/home/ui/home_screen.dart';
import 'package:mzady/features/messages/ui/messages_screen.dart';
import 'package:mzady/features/profile/presentation/ui/profile_screen.dart';

import '../../core/services/local/secure_utils.dart';
import 'app_states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(const AppStates.initial());

  int currentIndex = 0;
  final PageController pageController = PageController();
  bool showNavBar = true;
  late bool isDarkMode;
  String? selectedValue;
  final List<Widget> screens = const [
    HomeScreen(),
    DiscoverScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];

  final List<String> navBarIcons = [
    AssetsManager.icHome,
    AssetsManager.icExplore,
    AssetsManager.icChat,
    AssetsManager.icUser,
  ];

  void changeIndex(int index) {
    if (currentIndex == index) {
      return;
    }
    currentIndex = index;

    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );

    emit(AppStates.successChangeNavBar(index));
  }

  void changeNavBarVisibility(bool isVisible) {
    if (showNavBar == isVisible) {
      return;
    }
    showNavBar = isVisible;
    emit(AppStates.changeNavBarVisibility(isVisible));
  }

  void onPageChanged(int index) {
    currentIndex = index;
    emit(AppStates.successChangeNavBar(index));
  }

  Future<void> changeAppThemeMode({bool? fromCache}) async {
    try {
      if (fromCache != null) {
        isDarkMode = fromCache;
      } else {
        isDarkMode = !isDarkMode;

        await getIt<SecureStorageManager>().saveData(
          key: SecureKeys.theme,
          value: isDarkMode
              ? ThemeEnum.dark.toString()
              : ThemeEnum.light.toString(),
        );
      }
      SystemUIConfig.updateOverlayStyle(isDark: isDarkMode);

      emit(const AppStates.successChangeThemeMode());
    } catch (error) {
      isDarkMode = !isDarkMode;
      emit(const AppStates.errorChangeThemeMode());
    }
  }

  Future<void> changeLanguage(BuildContext context, Locale locale) async {
    try {
      await context.setLocale(locale);
      selectedValue = locale.languageCode;

      await getIt<SecureStorageManager>().saveData(
        key: SecureKeys.lang,
        value: locale.languageCode,
      );
      emit(const AppStates.successChangeLanguage());
    } catch (error) {
      emit(const AppStates.errorChangeLanguage());
    }
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
