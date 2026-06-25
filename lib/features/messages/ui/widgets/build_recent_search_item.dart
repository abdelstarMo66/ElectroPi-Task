import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';


class BuildRecentSearchItem extends StatelessWidget {
  const BuildRecentSearchItem({required this.name, super.key});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(
        bottom: 12,
        start: 8.0,
        end: 8.0,
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: context.colorScheme.surfaceContainerLow.withValues(
            alpha: AppSize.op0_3,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.onSurfaceVariant.withValues(
              alpha: AppSize.op0_05,
            ),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: context.colorScheme.surfaceContainerLow.withValues(
                    alpha: AppSize.op0_1,
                  ),
                  shape: BoxShape.circle,
                ),
                child: AppSvgIcon(
                  iconName: AssetsManager.icRecently,
                  color: context.colorScheme.onSurfaceVariant,
                  size: 16.0,
                ),
              ),
              const SizedBox(width: 16),

              Expanded(
                child: Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.bodyLarge?.copyWith(
                    color: context.colorScheme.onSurface.withValues(alpha: 0.6),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: context.colorScheme.onSurfaceVariant.withValues(
                      alpha: AppSize.op0_15,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: AppSvgIcon(
                    iconName: AssetsManager.icClose,
                    size: 16,
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
