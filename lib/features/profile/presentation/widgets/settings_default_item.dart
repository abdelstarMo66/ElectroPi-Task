import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';

import '../../../../core/widgets/custom_text.dart';

class SettingsDefaultItem extends StatelessWidget {
  const SettingsDefaultItem({
    required this.title,
    required this.icon,
    required this.onTap,
    super.key,
    this.isLast = false,
  });

  final String title;
  final String icon;
  final VoidCallback onTap;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: isLast
          ? const BorderRadius.vertical(bottom: Radius.circular(20))
          : BorderRadius.zero,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: context.colorScheme.primary.withValues(
                  alpha: AppSize.op0_1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: AppSvgIcon(iconName: icon, size: 18.0),
            ),
            AppSize.s16.horizontalSpace,
            CustomText(textKey: title, style: context.titleMedium),
            const Spacer(),
            Transform.rotate(
              angle: 270 * (3.14 / 180),
              child: AppSvgIcon(
                iconName: AssetsManager.icSmallAngleDown,
                size: AppSize.i18,
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
