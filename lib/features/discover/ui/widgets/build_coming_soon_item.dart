import 'package:flutter/material.dart';
import 'package:mzady/core/themes/color_manager.dart';
import 'package:mzady/core/themes/font_manager.dart';
import 'package:mzady/core/themes/style_manager.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';

class BuildComingSoonItem extends StatelessWidget {
  const BuildComingSoonItem({required this.index, super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      height: 450,
      child: Stack(
        children: [
          Positioned.fill(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return CustomNetworkImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1503376780353-7e6692767b70',
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  borderRadius: 22.0,
                );
              },
            ),
          ),

          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    context.colorScheme.onSurface.withValues(
                      alpha: AppSize.op0_8,
                    ),
                    AppColors.transparent,
                    AppColors.transparent,
                    context.colorScheme.onSurface.withValues(
                      alpha: AppSize.op0_95,
                    ),
                  ],
                  stops: const [0.0, 0.25, 0.5, 1.0],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional.topCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: context.colorScheme.onSurfaceVariant.withValues(
                          alpha: AppSize.op0_15,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: context.colorScheme.surface.withValues(
                            alpha: AppSize.op0_15,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'BIDDING OPENS IN',
                            style: TextStyleManager.createCustomFontStyle(
                              context,
                              color: context.colorScheme.primary,
                              letterSpacing: 2.5,
                              fontSize: FontSize.s10,
                              fontWeight: FontWeightManager.extraBold,
                            ),
                          ),
                          AppSize.s6.verticalSpace,
                          Text(
                            '03D : 14H : 25M',
                            style: TextStyleManager.createCustomFontStyle(
                              context,
                              color: context.colorScheme.surface,
                              letterSpacing: 2.5,
                              fontSize: FontSize.s22,
                              fontWeight: FontWeightManager.extraBold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  'Porsche 911 GT3 RS',
                  style: TextStyleManager.createCustomFontStyle(
                    context,
                    color: context.colorScheme.surface,
                    fontWeight: FontWeightManager.extraBold,
                    fontSize: FontSize.s26,
                  ),
                ),
                AppSize.s12.verticalSpace,
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 16.0,
                  ),
                  decoration: BoxDecoration(
                    color: context.colorScheme.onSurfaceVariant.withValues(
                      alpha: AppSize.op0_13,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: context.colorScheme.surface.withValues(
                        alpha: AppSize.op0_1,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'STARTING PRICE',
                            style: context.labelMedium?.copyWith(
                              color: context.colorScheme.onSurfaceVariant,
                            ),
                          ),
                          Text(
                            '\$120,000',
                            style: TextStyleManager.createCustomFontStyle(
                              context,
                              fontSize: FontSize.s24,
                              fontWeight: FontWeightManager.extraBold,
                              color: context.colorScheme.tertiary,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: context.colorScheme.onSurfaceVariant
                              .withValues(alpha: AppSize.op0_13),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: context.colorScheme.surface.withValues(
                              alpha: AppSize.op0_1,
                            ),
                            width: 1.5,
                          ),
                        ),
                        child: Row(
                          children: [
                            AppSvgIcon(
                              iconName: AssetsManager.icBellNotification,
                              color: context.colorScheme.surface,
                              size: 16,
                            ),
                            AppSize.s8.horizontalSpace,
                            Text(
                              'NOTIFY ME',
                              style: context.labelMedium?.copyWith(
                                color: context.colorScheme.surface,
                                letterSpacing: 0.3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
