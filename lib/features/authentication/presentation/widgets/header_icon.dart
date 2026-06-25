import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';

class HeaderIcon extends StatelessWidget {
  const HeaderIcon({
    required this.icon,
    this.iconSize = AppSize.i55,
    super.key,
  });

  final String icon;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(AppSize.s24),
        decoration: BoxDecoration(
          color: context.colorScheme.primary.withValues(alpha: AppSize.op0_1),
          shape: BoxShape.circle,
        ),
        child: AppSvgIcon(iconName: icon, size: iconSize),
      ),
    );
  }
}
