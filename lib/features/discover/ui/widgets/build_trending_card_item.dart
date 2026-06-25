import 'package:flutter/material.dart';
import 'package:mzady/core/themes/color_manager.dart';
import 'package:mzady/core/themes/font_manager.dart';
import 'package:mzady/core/themes/style_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';
import 'package:mzady/features/discover/ui/widgets/build_blur_tag.dart';

import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/size_manager.dart';

class BuildTrendingCardItem extends StatelessWidget {
  const BuildTrendingCardItem({required this.data, super.key});

  final Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      margin: const EdgeInsets.only(right: AppSize.s20, bottom: AppSize.s20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.onSurfaceVariant.withValues(
              alpha: AppSize.op0_25,
            ),
            blurRadius: 5,
            offset: AppOffest.offset0_4,
          ),
        ],
      ),
      child: Stack(
        children: [
          CustomNetworkImage(
            imageUrl: data['image']!,
            width: 320,
            height: double.infinity,
            borderRadius: 40,
          ),
          Container(
            padding: const EdgeInsets.all(AppSize.s24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.black.withValues(alpha: AppSize.op0_05),
                  AppColors.black.withValues(alpha: AppSize.op0_35),
                  AppColors.black.withValues(alpha: AppSize.op0_65),
                ],
                stops: const [0.0, 0.3, 1.0],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BuildBlurTag(text: 'Top Trending'),
                AppSize.s8.verticalSpace,
                Text(
                  data['title']!,
                  style: TextStyleManager.createCustomFontStyle(
                    context,
                    fontSize: FontSize.s22,
                    fontWeight: FontWeightManager.black,
                    color: Colors.white,
                    height: 1.1,
                  ),
                ),
                AppSize.s16.verticalSpace,
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CURRENT BID',
                          style: context.labelMedium?.copyWith(
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          data['price']!,
                          style: TextStyleManager.createCustomFontStyle(
                            context,
                            color: Colors.white,
                            fontSize: FontSize.s22,
                            fontWeight: FontWeightManager.black,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: AppSize.s48,
                      width: AppSize.s48,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: AppSize.op0_15),
                        borderRadius: const BorderRadiusDirectional.only(
                          topStart: Radius.circular(18),
                          topEnd: Radius.circular(8),
                          bottomStart: Radius.circular(8),
                          bottomEnd: Radius.circular(18),
                        ),
                        border: Border.all(
                          color: Colors.white.withValues(alpha: AppSize.op0_2),
                          width: AppSize.s1_5,
                        ),
                      ),
                      child: const Center(
                        child: AppSvgIcon(
                          iconName: AssetsManager.icAuction,
                          color: Colors.white,
                          size: AppSize.i28,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
