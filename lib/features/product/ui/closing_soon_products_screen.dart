import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';

class ClosingSoonProductsScreen extends StatelessWidget {
  const ClosingSoonProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Closing Soon'),
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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: _buildUrgencyBanner(context),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return _buildAuctionListItem(context, index);
              }, childCount: 10),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 30)),
        ],
      ),
    );
  }

  Widget _buildUrgencyBanner(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.colorScheme.error.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: context.colorScheme.error.withValues(alpha: AppSize.op0_1),
        ),
      ),
      child: Row(
        children: [
          AppSvgIcon(
            iconName: AssetsManager.icRecently,
            color: context.colorScheme.error,
            size: 24,
          ),
          AppSize.s12.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hurry Up!',
                  style: context.titleMedium?.copyWith(
                    color: context.colorScheme.error,
                  ),
                ),
                Text(
                  'Items ending in less than 5 minutes.',
                  style: context.labelSmall?.copyWith(
                    color: context.colorScheme.error.withValues(
                      alpha: AppSize.op0_7,
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

  Widget _buildAuctionListItem(BuildContext context, int index) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
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
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: const CustomNetworkImage(
              imageUrl: 'https://via.placeholder.com/150',
              width: 100,
              height: 100,
            ),
          ),
          AppSize.s16.horizontalSpace,

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Luxury Watch Edition X',
                  style: context.titleMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                AppSize.s4.verticalSpace,
                Text(
                  'Current Bid',
                  style: context.labelSmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
                Text(
                  '\$2,500',
                  style: context.titleLarge?.copyWith(
                    color: context.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AppSize.s8.verticalSpace,

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: context.colorScheme.error.withValues(
                          alpha: AppSize.op0_1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          AppSvgIcon(
                            iconName: AssetsManager.icRecently,
                            size: 12,
                            color: context.colorScheme.error,
                          ),
                          AppSize.s4.horizontalSpace,
                          Text(
                            '02:45',
                            style: context.labelMedium?.copyWith(
                              color: context.colorScheme.error,
                            ),
                          ),
                        ],
                      ),
                    ),

                    CircleAvatar(
                      radius: 16,
                      backgroundColor: context.colorScheme.onSurfaceVariant,
                      child: const AppSvgIcon(
                        iconName: AssetsManager.icAuction,
                        size: 14,
                        color: Colors.white,
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
