import 'package:flutter/material.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';

import '../../../../core/utils/extensions.dart';

class BuildClosingSoonItem extends StatelessWidget {
  const BuildClosingSoonItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsetsDirectional.only(end: 18, bottom: 10, top: 10),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.surfaceContainerLow.withValues(
              alpha: AppSize.op0_13,
            ),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  children: [
                    CustomNetworkImage(
                      imageUrl:
                          'https://images.unsplash.com/photo-1523275335684-37898b6baf30',
                      width: constraints.maxWidth,
                      height: constraints.maxHeight,
                      borderRadius: 20,
                    ),

                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: context.colorScheme.onSurfaceVariant
                              .withValues(alpha: AppSize.op0_7),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          '01:20',
                          style: context.labelMedium?.copyWith(
                            color: context.colorScheme.surface,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Smart Watch SE',
                    style: context.titleLarge,
                    maxLines: 1,
                  ),
                  const Spacer(),
                  Text(
                    'Current Bid',
                    style: context.labelSmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Text(
                    '\$420',
                    style: context.displayMedium?.copyWith(
                      color: context.colorScheme.primary,
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Text(
                      'BID NOW',
                      style: context.titleMedium?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
