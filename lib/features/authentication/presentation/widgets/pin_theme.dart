import 'package:flutter/material.dart';
import 'package:mzady/core/themes/font_manager.dart';
import 'package:mzady/core/themes/style_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:pinput/pinput.dart';

PinTheme defaultPinTheme(BuildContext context) => PinTheme(
  width: AppSize.s64,
  height: AppSize.s64,
  textStyle: TextStyleManager.createCustomFontStyle(
    context,
    color: context.colorScheme.primary,
    fontSize: FontSize.s32,
    fontWeight: FontWeightManager.bold,
  ),
  decoration: BoxDecoration(
    color: context.colorScheme.surface,
    borderRadius: BorderRadius.circular(AppSize.r16),
    border: Border.all(
      color: context.colorScheme.onSurfaceVariant.withValues(
        alpha: AppSize.op0_4,
      ),
    ),
  ),
);
