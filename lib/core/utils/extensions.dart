import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mzady/core/utils/size_manager.dart';

extension SpacingExtension on num {
  SizedBox get verticalSpace => SizedBox(height: toDouble().h);
  SizedBox get horizontalSpace => SizedBox(width: toDouble().w);
}

extension StringExtension on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  bool get isValidEmail =>
      RegExp(r'^.+@[a-zA-Z]+\.[a-zA-Z]+(\.?[a-zA-Z]+)$').hasMatch(this!);

  bool get isValidPassword => RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#@$!%*?&])[A-Za-z\d#@$!%*?&]{8,}$',
  ).hasMatch(this!);

  bool get isValidPhone => RegExp(r'^(01[0-5][0-9]{8})$').hasMatch(this!);
}

extension ContextExtension on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}

extension TypographyExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  TextStyle? get displayLarge => textTheme.displayLarge;
  TextStyle? get displayMedium => textTheme.displayMedium;
  TextStyle? get displaySmall => textTheme.displaySmall;

  TextStyle? get headlineLarge => textTheme.headlineLarge;
  TextStyle? get headlineMedium => textTheme.headlineMedium;
  TextStyle? get headlineSmall => textTheme.headlineSmall;

  TextStyle? get titleLarge => textTheme.titleLarge;
  TextStyle? get titleMedium => textTheme.titleMedium;
  TextStyle? get titleSmall => textTheme.titleSmall;

  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get bodySmall => textTheme.bodySmall;

  TextStyle? get labelLarge => textTheme.labelLarge;
  TextStyle? get labelMedium => textTheme.labelMedium;
  TextStyle? get labelSmall => textTheme.labelSmall;
}

extension ModernSnackBarExtension on BuildContext {
  void showSuccessSnackBar({required String message, String? title}) {
    CherryToast.success(
      backgroundColor: colorScheme.surface,
      shadowColor: colorScheme.secondary.withValues(alpha: AppSize.op0_2),
      title: title != null
          ? Text(
              title,
              style: titleMedium?.copyWith(color: colorScheme.secondary),
            )
          : null,
      description: Text(
        message,
        style: bodyMedium?.copyWith(color: colorScheme.onSurface),
      ),
      toastPosition: Position.bottom,
      animationType: AnimationType.fromBottom,
      animationDuration: const Duration(milliseconds: 600),
      borderRadius: 12,
    ).show(this);
  }

  void showErrorSnackBar({required String message, String? title}) {
    CherryToast.error(
      backgroundColor: colorScheme.surface,
      shadowColor: colorScheme.error.withValues(alpha: AppSize.op0_2),
      title: title != null
          ? Text(title, style: titleMedium?.copyWith(color: colorScheme.error))
          : null,
      description: Text(
        message,
        style: bodyMedium?.copyWith(color: colorScheme.onSurface),
      ),
      animationType: AnimationType.fromBottom,
      toastPosition: Position.bottom,
      animationDuration: const Duration(milliseconds: 600),
      borderRadius: 12,
    ).show(this);
  }
}
