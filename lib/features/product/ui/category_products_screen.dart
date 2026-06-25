import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';

class CategoryProductsScreen extends StatelessWidget {
  const CategoryProductsScreen({super.key, required this.categoryName});

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    final textTheme = context;

    return Scaffold(
      appBar: CustomAppBar(
        title: Text(categoryName, style: textTheme.displaySmall),
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
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
              child: Text(
                'Showing 24 premium items',
                style: textTheme.labelSmall?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => _buildProductListItem(context, index),
                childCount: 10,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
        ],
      ),
    );
  }

  Widget _buildProductListItem(BuildContext context, int index) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: context.colorScheme.surfaceContainerLow.withValues(
            alpha: AppSize.op0_4,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CustomNetworkImage(
              imageUrl: 'https://picsum.photos/400/400?item=$index',
              width: 110,
              height: 110,
            ),
          ),
          AppSize.s16.horizontalSpace,

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: context.colorScheme.surfaceContainerLow,
                      backgroundImage: const NetworkImage(
                        'https://ui-avatars.com/api/?name=User',
                      ),
                    ),
                    AppSize.s6.horizontalSpace,
                    Text('Premium Seller', style: context.labelSmall),
                    const Spacer(),
                    AppSvgIcon(
                      iconName: AssetsManager.icLocation,
                      size: 10,
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                    AppSize.s2.horizontalSpace,
                    Text(
                      'Egypt',
                      style: context.labelSmall?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                AppSize.s8.verticalSpace,

                Text(
                  'Luxury Modern Villa $index',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                AppSize.s12.verticalSpace,

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Current Bid',
                          style: context.labelSmall?.copyWith(fontSize: 10),
                        ),
                        Text(
                          '\$120,500',
                          style: context.titleLarge?.copyWith(
                            color: context.colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: context.colorScheme.primary.withValues(
                          alpha: AppSize.op0_1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: context.colorScheme.primary.withValues(
                            alpha: AppSize.op0_5,
                          ),
                        ),
                      ),
                      child: Text(
                        'Details',
                        style: context.labelMedium?.copyWith(
                          color: context.colorScheme.primary,
                          fontWeight: FontWeight.bold,
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
