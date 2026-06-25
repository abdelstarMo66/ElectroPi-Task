import 'package:flutter/material.dart';

import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/size_manager.dart';

class BuildDiscoverHeaderSection extends StatelessWidget {
  const BuildDiscoverHeaderSection({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        child: Row(
          children: [
            Container(
              height: 14,
              width: 3,
              decoration: BoxDecoration(
                color: context.colorScheme.onSurfaceVariant,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            AppSize.s6.horizontalSpace,
            Text(
              title.toUpperCase(),
              style: context.titleLarge?.copyWith(
                color: context.colorScheme.onSurfaceVariant.withValues(
                  alpha: AppSize.op0_8,
                ),
              ),
            ),
            const Spacer(),
            Text(
              'View All'.toUpperCase(),
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
