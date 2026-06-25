import 'package:flutter/material.dart';
import 'package:mzady/core/themes/font_manager.dart';
import 'package:mzady/core/themes/style_manager.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';

import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/size_manager.dart';

class BuildVipCardItem extends StatelessWidget {
  const BuildVipCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: context.colorScheme.primary.withValues(alpha: AppSize.op0_15),
          width: 1.2,
        ),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.onSurfaceVariant.withValues(
              alpha: AppSize.op0_2,
            ),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Stack(
                    children: [
                      CustomNetworkImage(
                        imageUrl:
                            'https://images.unsplash.com/photo-1547996160-81dfa63595aa?q=80&w=1000',
                        width: constraints.maxWidth,
                        height: constraints.maxHeight,
                        borderRadius: 18,
                      ),
                      PositionedDirectional(
                        bottom: 8,
                        start: 8,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: context.colorScheme.onSurfaceVariant
                                .withValues(alpha: AppSize.op0_5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AppSvgIcon(
                                iconName: AssetsManager.icVip,
                                color: context.colorScheme.primary,
                                size: 10,
                              ),
                              AppSize.s4.horizontalSpace,
                              Text(
                                'VIP',
                                style: TextStyleManager.createCustomFontStyle(
                                  context,
                                  fontSize: FontSize.s10,
                                  fontWeight: FontWeightManager.black,
                                  color: context.colorScheme.surface,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12, 4, 12, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vacheron Constantin',
                    style: context.titleLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  AppSize.s2.verticalSpace,
                  Text(
                    'Luxury Collection',
                    style: context.labelSmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$120,000',
                        style: TextStyleManager.createCustomFontStyle(
                          context,
                          fontSize: FontSize.s16,
                          fontWeight: FontWeightManager.extraBold,
                          color: context.colorScheme.primary,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: context.colorScheme.primary.withValues(
                              alpha: 0.08,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: AppSvgIcon(
                            iconName: AssetsManager.icAuction,
                            color: context.colorScheme.primary,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  AppSize.s2.verticalSpace,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
