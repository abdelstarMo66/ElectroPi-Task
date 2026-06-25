import 'package:flutter/material.dart';
import 'package:mzady/core/themes/font_manager.dart';
import 'package:mzady/core/themes/style_manager.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';

class FeaturedAuctionCardItem extends StatelessWidget {
  const FeaturedAuctionCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: context.colorScheme.onSurfaceVariant.withValues(
            alpha: AppSize.op0_3,
          ),
          width: 0.8,
        ),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.onSurfaceVariant.withValues(
              alpha: AppSize.op0_2,
            ),
            blurRadius: 30,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 7,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadiusDirectional.only(
                        topStart: Radius.circular(24),
                        bottomStart: Radius.circular(24),
                      ),
                      child: CustomNetworkImage(
                        imageUrl:
                            'https://images.unsplash.com/photo-1614164185128-e4ec99c436d7',
                        width: constraints.maxWidth,
                        height: 140.0,
                        borderRadius: 0,
                      ),
                    ),
                    Positioned(
                      bottom: 6,
                      left: 6,
                      right: 6,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                          color: context.colorScheme.onSurfaceVariant
                              .withValues(alpha: AppSize.op0_5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            '02:45:10',
                            style: textTheme.labelMedium?.copyWith(
                              color: context.colorScheme.surface,
                            ),
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
            flex: 13,
            child: Container(
              padding: const EdgeInsetsDirectional.fromSTEB(
                12.0,
                12.0,
                12.0,
                12.0,
              ),
              height: 140.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rolex Daytona 2024',
                        style: textTheme.titleLarge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      AppSize.s2.verticalSpace,
                      Row(
                        children: [
                          AppSvgIcon(
                            iconName: AssetsManager.icLocation,
                            size: 11,
                            color: context.colorScheme.onSurfaceVariant,
                          ),
                          AppSize.s4.horizontalSpace,
                          Text(
                            'Sheikh Zayed, Cairo',
                            style: textTheme.labelSmall?.copyWith(
                              color: context.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  AppSize.s6.verticalSpace,
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 12,
                        backgroundImage: NetworkImage(
                          'https://i.pravatar.cc/150?u=Ahmed',
                        ),
                      ),
                      AppSize.s4.horizontalSpace,
                      Text('Ahmed Ali', style: textTheme.labelSmall),
                      AppSize.s4.horizontalSpace,
                      AppSvgIcon(
                        iconName: AssetsManager.icVerification,
                        size: 11,
                        color: context.colorScheme.primary,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Current Bid',
                            style: TextStyleManager.createCustomFontStyle(
                              context,
                              fontSize: 9,
                              fontWeight: FontWeightManager.bold,
                              color: context.colorScheme.onSurfaceVariant,
                            ),
                          ),
                          Text(
                            '\$52,400',
                            style: TextStyleManager.createCustomFontStyle(
                              context,
                              fontSize: 18,
                              fontWeight: FontWeightManager.black,
                              color: context.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: context.colorScheme.onSurfaceVariant
                              .withValues(alpha: AppSize.op0_9),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: context.colorScheme.onSurfaceVariant
                                  .withValues(alpha: AppSize.op0_3),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Text(
                              'BID',
                              style: textTheme.labelMedium?.copyWith(
                                color: context.colorScheme.surface,
                              ),
                            ),
                            AppSize.s4.horizontalSpace,
                            AppSvgIcon(
                              iconName: 'AssetsManager.icTrendingUp',
                              color: context.colorScheme.surface,
                              size: 16.0,
                            ),
                          ],
                        ),
                      ),
                    ],
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
