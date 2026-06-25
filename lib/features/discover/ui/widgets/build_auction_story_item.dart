import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';
import 'package:mzady/features/discover/ui/widgets/build_blur_tag.dart';

class BuildAuctionStoryItem extends StatelessWidget {
  const BuildAuctionStoryItem({required this.storyData, super.key});

  final Map<String, String> storyData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSize.s16),
      child: Container(
        width: 145,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Stack(
          children: [
            Positioned.fill(
              child: LayoutBuilder(
                builder: (context, constraints) => CustomNetworkImage(
                  imageUrl: storyData['image']!,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  borderRadius: 30,
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withValues(alpha: AppSize.op0_3),
                      Colors.transparent,
                      Colors.black.withValues(alpha: AppSize.op0_85),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSize.s16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BuildBlurTag(text: storyData['brand']!.toUpperCase()),
                  AppSize.s8.verticalSpace,
                  Text(
                    storyData['item']!,
                    maxLines: 2,
                    style: context.titleLarge?.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              top: AppSize.s12,
              right: AppSize.s12,
              child: Container(
                padding: const EdgeInsets.all(AppSize.s6),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: AppSize.op0_4),
                  shape: BoxShape.circle,
                ),
                child: AppSvgIcon(
                  iconName: AssetsManager.icBolt,
                  color: Colors.white.withValues(alpha: AppSize.op0_8),
                  size: AppSize.i14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
