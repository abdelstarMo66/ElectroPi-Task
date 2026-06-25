import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';

class PremiumProductsScreen extends StatelessWidget {
  const PremiumProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Premium Auctions', style: context.displaySmall),
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
          SliverToBoxAdapter(child: _buildPremiumStatusCard(context)),

          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => _buildLuxuryItem(context, index),
                childCount: 5,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
        ],
      ),
    );
  }

  Widget _buildPremiumStatusCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'VIP Collection',
                  style: context.displayMedium?.copyWith(color: Colors.white),
                ),
                Text(
                  'Exclusive assets handpicked for you.',
                  style: context.labelSmall?.copyWith(
                    color: Colors.white.withValues(alpha: AppSize.op0_7),
                  ),
                ),
              ],
            ),
          ),
          AppSvgIcon(
            iconName: AssetsManager.icPremium,
            color: context.colorScheme.primary,
            size: 40,
          ),
        ],
      ),
    );
  }

  Widget _buildLuxuryItem(BuildContext context, int index) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          color: context.colorScheme.primary.withValues(alpha: AppSize.op0_3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: CustomNetworkImage(
                    imageUrl: 'https://picsum.photos/600/400?luxury=$index',
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: context.colorScheme.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'FEATURED',
                      style: context.labelMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundColor: context.colorScheme.surfaceContainerLow,
                      child: const Icon(Icons.person, size: 16),
                    ),
                    AppSize.s8.horizontalSpace,
                    Text('Al-Maktoum Assets', style: context.labelLarge),
                    const Spacer(),
                    AppSvgIcon(
                      iconName: AssetsManager.icLocation,
                      size: 12,
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                    AppSize.s4.horizontalSpace,
                    Text(
                      'Dubai',
                      style: context.labelSmall?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                AppSize.s12.verticalSpace,
                Text(
                  'Luxury Yacht - 2026 Edition',
                  style: context.headlineSmall,
                ),
                AppSize.s4.verticalSpace,
                Row(
                  children: [
                    Text('Current Bid: ', style: context.labelSmall),
                    Text(
                      '\$1,200,000',
                      style: context.titleLarge?.copyWith(
                        color: context.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                color: context.colorScheme.primary,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: context.colorScheme.primary.withValues(
                      alpha: AppSize.op0_2,
                    ),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'PLACE BID NOW',
                  style: context.titleSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
