import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_states.freezed.dart';

@freezed
class AppStates with _$AppStates {
  const AppStates._();

  const factory AppStates.initial() = Initial;

  const factory AppStates.loadingChangeNavBar() = LoadingChangeNavBar;

  const factory AppStates.successChangeNavBar(int index) = SuccessChangeNavBar;

  const factory AppStates.changeNavBarVisibility(bool isVisible) =
      ChangeNavBarVisibility;

  const factory AppStates.loadingChangeThemeMode() = LoadingChangeThemeMode;

  const factory AppStates.successChangeThemeMode() = SuccessChangeThemeMode;

  const factory AppStates.errorChangeThemeMode() = ErrorChangeThemeMode;

  const factory AppStates.loadingChangeLanguage() = LoadingChangeLanguage;

  const factory AppStates.successChangeLanguage() = SuccessChangeLanguage;

  const factory AppStates.errorChangeLanguage() = ErrorChangeLanguage;
}
