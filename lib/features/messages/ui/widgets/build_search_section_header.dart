import 'package:flutter/material.dart';
import 'package:mzady/core/widgets/custom_text.dart';

import '../../../../core/utils/extensions.dart';

class BuildSearchSectionHeader extends StatelessWidget {
  const BuildSearchSectionHeader({
    required this.title,
    this.showClearAll = false,
    super.key,
  });

  final String title;
  final bool showClearAll;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              textKey: title,
              style: context.headlineLarge?.copyWith(
                color: context.colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
            if (showClearAll)
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(4),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 2,
                  ),
                  child: CustomText(
                    // todo: add to translation
                    textKey: 'Clear All',
                    style: context.labelLarge?.copyWith(
                      color: context.colorScheme.primary,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
