import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_text.dart';


class BuildContactIconCard extends StatelessWidget {
  const BuildContactIconCard({
    required this.icon,
    required this.label,
    super.key,
  });

  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          alignment:
              Alignment.center, // Ensures the child doesn't stretch to 60x60
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.03),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: AppSvgIcon(
            iconName: icon,
            color: context.colorScheme.primary,
            size: 22.0,
          ),
        ),
        AppSize.s8.verticalSpace,
        CustomText(textKey: label, style: context.bodySmall),
      ],
    );
  }
}
