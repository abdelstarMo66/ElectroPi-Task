import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/translations/locale_keys.g.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/custom_elevated_button.dart';

class BuildProfileActionButtons extends StatelessWidget {
  const BuildProfileActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: CustomElevatedButton(
            text: LocaleKeys.profile_edit_profile_btn,
            onPressed: () => context.push(Routes.editProfile),
          ),
        ),
        AppSize.s12.horizontalSpace,
        Expanded(
          flex: 2,
          child: CustomElevatedButton(
            text: LocaleKeys.profile_share_btn,
            backgroundColor: AppColors.transparent,
            textColor: context.colorScheme.onSurface.withValues(alpha: 0.6),
            onPressed: () {},
          ),
        ),
        AppSize.s12.horizontalSpace,
        const BuildMainActionCircle(),
      ],
    );
  }
}

class BuildMainActionCircle extends StatelessWidget {
  const BuildMainActionCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showModernSheet(context),
      borderRadius: BorderRadius.circular(50),
      child: Container(
        height: 52,
        width: 52,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.colorScheme.primary, // Teal
          border: Border.all(
            color: context.colorScheme.outline.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        child: const Icon(Icons.add_rounded, color: Colors.white, size: 30),
      ),
    );
  }

  void _showModernSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Container(
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        ),
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Handle
            Container(
              width: 36,
              height: 4,
              margin: const EdgeInsets.only(bottom: 24),
              decoration: BoxDecoration(
                color: context.colorScheme.outline.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Text(
              'Create new',
              style: context.textTheme.labelSmall?.copyWith(
                letterSpacing: 1.2,
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
            AppSize.s20.verticalSpace,
            _sheetItem(
              context,
              label: 'AUCTION',
              desc: 'Start a new live auction',
              icon: Icons.gavel_rounded,
              color: context.colorScheme.primary,
              containerColor: context.colorScheme.primaryContainer,
              onTap: () {
                Navigator.pop(ctx);
              },
            ),
            AppSize.s10.verticalSpace,
            _sheetItem(
              context,
              label: 'STORY',
              desc: 'Share a visual story',
              icon: Icons.auto_stories_rounded,
              color: context.colorScheme.secondary,
              containerColor: context.colorScheme.secondaryContainer,
              onTap: () {
                Navigator.pop(ctx);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _sheetItem(
    BuildContext context, {
    required String label,
    required String desc,
    required IconData icon,
    required Color color,
    required Color containerColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 18),
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(icon, color: Colors.white, size: 22),
            ),
            AppSize.s16.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.0,
                      color: color,
                    ),
                  ),
                  Text(
                    desc,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: color.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: color.withValues(alpha: 0.4),
            ),
          ],
        ),
      ),
    );
  }
}
