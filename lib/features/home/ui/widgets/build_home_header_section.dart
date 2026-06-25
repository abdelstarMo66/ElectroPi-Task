import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';

import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/size_manager.dart';

class BuildHomeHeaderSection extends StatelessWidget {
  const BuildHomeHeaderSection({
    required this.title,
    required this.subtitle,
    this.onShowMore,
    super.key,
  });

  final String title;
  final String subtitle;
  final VoidCallback? onShowMore;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.displayMedium?.copyWith(letterSpacing: -0.5),
                  ),
                  Text(
                    subtitle,
                    style: context.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),

            if (onShowMore != null)
              InkWell(
                onTap: onShowMore,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: context.colorScheme.primary.withValues(alpha: 0.08),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: context.colorScheme.primary.withValues(
                        alpha: AppSize.op0_1,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'See All',
                        style: context.labelLarge?.copyWith(
                          color: context.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: context.colorScheme.primary,
                          shape: BoxShape.circle,
                        ),
                        child: Transform.flip(
                          flipX: true,
                          child: AppSvgIcon(
                            iconName: AssetsManager.icArrowLeft,
                            size: 10,
                            color: context.colorScheme.surface,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
