import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';

import '../../../../core/utils/size_manager.dart';

class BuildAppBarActionItem extends StatelessWidget {
  const BuildAppBarActionItem({required this.icon, super.key});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        padding: const EdgeInsets.all(11.0),
        decoration: BoxDecoration(
          color: context.colorScheme.onSurfaceVariant.withValues(
            alpha: AppSize.op0_05,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: AppSvgIcon(
          iconName: icon,
          color: context.colorScheme.onSurface.withValues(alpha: 0.6),
          size: 20,
        ),
      ),
    );
  }
}
