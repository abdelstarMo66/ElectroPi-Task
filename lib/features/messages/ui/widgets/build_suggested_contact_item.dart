import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';

import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/size_manager.dart';
import 'build_profile_with_status.dart';

class BuildSuggestedContactItem extends StatelessWidget {
  const BuildSuggestedContactItem({required this.index, super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12, left: 4, right: 4),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: context.colorScheme.surfaceContainerLow.withValues(
            alpha: AppSize.op0_1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.onSurfaceVariant.withValues(
              alpha: AppSize.op0_15,
            ),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leading: const BuildProfileWithStatus(profileSize: 55.0),

        title: Text('User Name $index', style: context.titleMedium),

        subtitle: Text(
          'Last seen 2h ago',
          style: context.bodySmall?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),

        trailing: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: context.colorScheme.surfaceContainerLow.withValues(
              alpha: AppSize.op0_2,
            ),
            shape: BoxShape.circle,
          ),
          child: Transform.rotate(
            angle: 270 * (3.14 / 180),
            child: AppSvgIcon(
              iconName: AssetsManager.icSmallAngleDown,
              size: 16.0,
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
