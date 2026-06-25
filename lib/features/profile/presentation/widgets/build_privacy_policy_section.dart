import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';

class BuildPrivacyPolicySection extends StatelessWidget {
  const BuildPrivacyPolicySection({
    required this.icon,
    required this.title,
    required this.content,
    super.key,
  });

  final String icon;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              AppSvgIcon(
                iconName: icon,
                size: 22,
                color: context.colorScheme.primary,
              ),
              AppSize.s12.horizontalSpace,
              Text(
                title,
                style: context.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
          AppSize.s10.verticalSpace,
          Padding(
            padding: const EdgeInsets.only(left: 34),
            child: Text(
              content,
              style: context.bodyMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
