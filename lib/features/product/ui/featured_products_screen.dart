import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';

class FeaturedProductsScreen extends StatelessWidget {
  const FeaturedProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Featured Assets'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: AppSvgIcon(
              iconName: AssetsManager.icFilter,
              size: 20,
              color: context.colorScheme.primary,
            ),
          ),
          AppSize.s10.horizontalSpace,
        ],
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => _buildAssetListItem(context),
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAssetListItem(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: context.colorScheme.surfaceContainerLow.withValues(
            alpha: AppSize.op0_5,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: AppSize.op0_05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: context.colorScheme.primary.withValues(
                        alpha: AppSize.op0_1,
                      ),
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: context.colorScheme.surfaceContainerLow,
                    backgroundImage: const NetworkImage(
                      'https://ui-avatars.com/api/?name=Muhammed+Ahmed',
                    ),
                  ),
                ),
                AppSize.s10.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Muhammed Ahmed',
                        style: context.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          AppSvgIcon(
                            iconName: AssetsManager.icLocation,
                            size: 10,
                            color: context.colorScheme.onSurfaceVariant,
                          ),
                          AppSize.s4.horizontalSpace,
                          Text(
                            'Cairo, Egypt',
                            style: context.labelSmall?.copyWith(
                              color: context.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                AppSvgIcon(
                  iconName: AssetsManager.icAuction,
                  size: 16,
                  color: context.colorScheme.onSurfaceVariant.withValues(
                    alpha: AppSize.op0_3,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: 240,
              child: CustomNetworkImage(
                imageUrl: 'https://picsum.photos/500/300?random=7',
                width: MediaQuery.sizeOf(context).width,
                height: 240,
                borderRadius: 16,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Modern Villa in Cairo',
                        style: context.titleMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      AppSize.s4.verticalSpace,
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Current Bid: ',
                              style: context.labelSmall?.copyWith(
                                color: context.colorScheme.onSurfaceVariant,
                              ),
                            ),
                            TextSpan(
                              text: '\$450,000',
                              style: context.titleMedium?.copyWith(
                                color: context.colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: context.colorScheme.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Bid',
                    style: context.labelLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
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
