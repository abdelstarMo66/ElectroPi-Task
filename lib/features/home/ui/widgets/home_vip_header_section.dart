import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/themes/color_manager.dart';
import 'package:mzady/core/themes/font_manager.dart';
import 'package:mzady/core/themes/style_manager.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';

import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/size_manager.dart';

class HomeVIPHeaderSection extends StatelessWidget {
  const HomeVIPHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context;

    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              context.colorScheme.primary.withValues(alpha: 0.08),
              AppColors.transparent,
            ],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: context.colorScheme.onSurface.withValues(
                  alpha: AppSize.op0_85,
                ),
                shape: BoxShape.circle,
                border: Border.all(
                  color: context.colorScheme.primary.withValues(
                    alpha: AppSize.op0_3,
                  ),
                ),
              ),
              child: AppSvgIcon(
                iconName: AssetsManager.icPremium,
                size: 20.0,
                color: context.colorScheme.primary.withValues(
                  alpha: AppSize.op0_9,
                ),
              ),
            ),
            AppSize.s12.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'VIP EXCLUSIVES',
                    style: TextStyleManager.createCustomFontStyle(
                      context,
                      fontSize: FontSize.s18,
                      fontWeight: FontWeightManager.extraBold,
                      letterSpacing: 1.3,
                    ),
                  ),
                  AppSize.s2.verticalSpace,
                  Text(
                    'Curated for the elite 1%',
                    style: textTheme.labelLarge?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => context.push(Routes.premiumProducts),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: context.colorScheme.onSurfaceVariant.withValues(
                    alpha: AppSize.op0_13,
                  ),
                  border: Border.all(
                    color: context.colorScheme.primary.withValues(
                      alpha: AppSize.op0_65,
                    ),
                    width: 0.8,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'More',
                      style: context.labelMedium?.copyWith(
                        color: context.colorScheme.primary,
                      ),
                    ),
                    AppSize.s4.horizontalSpace,
                    Transform.rotate(
                      angle: 270 * (3.14 / 180),
                      child: const AppSvgIcon(
                        iconName: AssetsManager.icSmallAngleDown,
                        size: 14.0,
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
