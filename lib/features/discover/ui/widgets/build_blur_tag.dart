import 'package:flutter/material.dart';
import 'package:mzady/core/themes/font_manager.dart';
import 'package:mzady/core/themes/style_manager.dart';
import 'package:mzady/core/utils/extensions.dart';

import '../../../../core/utils/size_manager.dart';

class BuildBlurTag extends StatelessWidget {
  const BuildBlurTag({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: context.colorScheme.onSurfaceVariant.withValues(
          alpha: AppSize.op0_5,
        ),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: context.colorScheme.onSurfaceVariant.withValues(
            alpha: AppSize.op0_6,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyleManager.createCustomFontStyle(
          context,
          fontSize: FontSize.s8,
          fontWeight: FontWeight.w900,
          color: context.colorScheme.surface,
        ),
      ),
    );
  }
}
