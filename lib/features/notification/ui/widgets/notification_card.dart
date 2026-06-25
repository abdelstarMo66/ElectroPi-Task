import 'package:flutter/material.dart';
import 'package:mzady/core/themes/color_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/custom_text.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    required this.title,
    required this.body,
    required this.time,
    required this.icon,
    required this.color,
    this.actionLabel,
    this.isUnread = false,
    super.key,
  });

  final String title;
  final String body;
  final String time;
  final IconData icon;
  final Color color;
  final bool isUnread;
  final String? actionLabel;

  @override
  Widget build(BuildContext context) {
    final textTheme = context;

    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: IntrinsicHeight(
          child: Row(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 5,
                color: isUnread ? color : AppColors.transparent,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: color.withValues(alpha: AppSize.op0_1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(icon, color: color, size: 22),
                      ),
                      AppSize.s16.horizontalSpace,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    title,
                                    style: textTheme.titleMedium,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                AppSize.s8.horizontalSpace,
                                Text(
                                  time,
                                  style: textTheme.labelSmall?.copyWith(
                                    color: context.colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              ],
                            ),
                            AppSize.s6.verticalSpace,
                            Text(
                              body,
                              style: textTheme.bodyLarge?.copyWith(
                                color: context.colorScheme.onSurface.withValues(
                                  alpha: 0.6,
                                ),
                                height: 1.4,
                              ),
                            ),
                            if (actionLabel != null) ...[
                              AppSize.s12.verticalSpace,
                              InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: color.withValues(
                                      alpha: AppSize.op0_1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: CustomText(
                                    textKey: actionLabel!,
                                    style: textTheme.bodySmall?.copyWith(
                                      color: color,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
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
