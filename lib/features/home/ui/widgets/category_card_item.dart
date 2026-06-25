import 'package:flutter/material.dart';
import 'package:mzady/core/themes/font_manager.dart';
import 'package:mzady/core/themes/style_manager.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';

class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({
    required this.title,
    required this.itemsCount,
    required this.imageUrl,
    super.key,
  });

  final String title;
  final String itemsCount;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(24),
          bottomEnd: Radius.circular(24),
        ),
      ),
      color: context.colorScheme.surface,
      elevation: 2.0,
      shadowColor: context.colorScheme.surfaceContainerLow.withValues(
        alpha: AppSize.op0_5,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 130.0,
            height: 140.0,
            child: ClipRRect(
              borderRadius: const BorderRadiusDirectional.only(
                topStart: Radius.circular(24),
                bottomEnd: Radius.circular(24),
              ).resolve(Directionality.of(context)),
              child: CustomNetworkImage(
                imageUrl: imageUrl,
                width: 130.0,
                height: 140.0,
                borderRadius: 0,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 140.0,
              child: Stack(
                children: [
                  PositionedDirectional(
                    bottom: 5,
                    end: 10,
                    child: Text(
                      itemsCount.padLeft(2, '0'),
                      style: TextStyleManager.createCustomFontStyle(
                        context,
                        fontSize: FontSize.s55,
                        fontWeight: FontWeightManager.black,
                        color: context.colorScheme.primary.withValues(
                          alpha: AppSize.op0_1,
                        ),
                        height: 1,
                      ),
                    ),
                  ),
                  PositionedDirectional(
                    top: 12,
                    end: 12,
                    child: Transform.rotate(
                      angle: 135 * (3.14 / 180),
                      child: AppSvgIcon(
                        iconName: AssetsManager.icArrowLeft,
                        color: context.colorScheme.onSurfaceVariant.withValues(
                          alpha: AppSize.op0_4,
                        ),
                        size: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title.toUpperCase(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyleManager.createCustomFontStyle(
                            context,
                            fontSize: FontSize.s14,
                            fontWeight: FontWeightManager.black,
                            letterSpacing: 0.5,
                          ),
                        ),
                        AppSize.s8.verticalSpace,
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: ShapeDecoration(
                            color: context.colorScheme.primary.withValues(
                              alpha: AppSize.op0_1,
                            ),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                topEnd: Radius.circular(24),
                                bottomStart: Radius.circular(24),
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AppSvgIcon(
                                iconName: AssetsManager.icCategories,
                                size: 10,
                                color: context.colorScheme.onSurfaceVariant,
                              ),
                              AppSize.s4.horizontalSpace,
                              Text(
                                '$itemsCount ITEMS',
                                style: context.labelMedium?.copyWith(
                                  color: context.colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ),
                        AppSize.s24.verticalSpace,
                      ],
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
