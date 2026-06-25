import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              _buildSliverImageAppBar(context),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 140),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildMainHeader(context),
                      AppSize.s32.verticalSpace,

                      Text('Specifications', style: context.titleMedium),
                      AppSize.s16.verticalSpace,
                      _buildCleanSpecs(context),

                      AppSize.s32.verticalSpace,
                      Text('Description', style: context.titleMedium),
                      AppSize.s12.verticalSpace,
                      Text(
                        'This premium property offers a modern architectural design with high-end finishes and smart home integration. Built for those who appreciate luxury and privacy.',
                        style: context.labelLarge?.copyWith(
                          color: context.colorScheme.onSurfaceVariant,
                          height: 1.6,
                        ),
                      ),

                      AppSize.s32.verticalSpace,
                      _buildSellerInfo(context),
                    ],
                  ),
                ),
              ),
            ],
          ),

          _buildPremiumBottomBar(context),
        ],
      ),
    );
  }

  Widget _buildSliverImageAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 400,
      pinned: true,
      elevation: 0,
      backgroundColor: context.colorScheme.surface,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: CircleAvatar(
          backgroundColor: Colors.black26,
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 18,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView.builder(
              controller: _pageController,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemCount: 3,
              itemBuilder: (context, index) {
                final String imageUrl =
                    'https://picsum.photos/1000/1000?item=$index';
                return GestureDetector(
                  onTap: () => _showFullScreenImage(context, imageUrl),
                  child: CustomNetworkImage(
                    imageUrl: imageUrl,
                    width: MediaQuery.sizeOf(context).width,
                    height: double.infinity,
                  ),
                );
              },
            ),
            Positioned(
              bottom: 20,
              child: Row(
                children: List.generate(
                  3,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 6,
                    width: _currentPage == index ? 24 : 6,
                    decoration: BoxDecoration(
                      color: _currentPage == index
                          ? Colors.white
                          : Colors.white54,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showFullScreenImage(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.all(16),
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.sizeOf(context).height * 0.6,
            maxWidth: MediaQuery.sizeOf(context).width * 0.9,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: InteractiveViewer(
              minScale: 0.5,
              maxScale: 4.0,
              child: CustomNetworkImage(
                imageUrl: imageUrl,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMainHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'REAL ESTATE',
          style: context.labelSmall?.copyWith(
            color: context.colorScheme.primary,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        AppSize.s8.verticalSpace,
        Text('Modern Penthouse', style: context.displayMedium),
        AppSize.s8.verticalSpace,
        Row(
          children: [
            AppSvgIcon(
              iconName: AssetsManager.icLocation,
              size: 14,
              color: context.colorScheme.onSurfaceVariant,
            ),
            AppSize.s6.horizontalSpace,
            Text(
              'Sheikh Zayed, Cairo',
              style: context.labelLarge?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCleanSpecs(BuildContext context) {
    final specs = [
      {'label': 'Area', 'val': '450 m²'},
      {'label': 'Beds', 'val': '4 Bedrooms'},
      {'label': 'Baths', 'val': '3 Bathrooms'},
      {'label': 'Entry', 'val': 'Private'},
    ];

    return Wrap(
      spacing: 30,
      runSpacing: 24,
      children: specs
          .map(
            (spec) => SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    spec['label']!,
                    style: context.labelSmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                      letterSpacing: 0.5,
                    ),
                  ),
                  AppSize.s4.verticalSpace,
                  Text(
                    spec['val']!,
                    style: context.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildSellerInfo(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: context.colorScheme.surfaceContainerLow.withValues(
            alpha: AppSize.op0_5,
          ),
        ),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(
              'https://ui-avatars.com/api/?name=Muhammed+Ahmed',
            ),
          ),
          AppSize.s12.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Muhammed Ahmed', style: context.titleSmall),
              Text(
                'Owner',
                style: context.labelSmall?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          const Spacer(),
          AppSvgIcon(
            iconName: AssetsManager.icChat,
            color: context.colorScheme.primary,
            size: 22,
          ),
        ],
      ),
    );
  }

  Widget _buildPremiumBottomBar(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 40),
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: AppSize.op0_05),
              blurRadius: 20,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Current Bid',
                  style: context.labelSmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
                Text(
                  '\$920,000',
                  style: context.displaySmall?.copyWith(
                    color: context.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              height: 60,
              width: 170,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.colorScheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  elevation: 8,
                  shadowColor: context.colorScheme.primary.withValues(
                    alpha: AppSize.op0_4,
                  ),
                ),
                child: Text(
                  'Place a Bid',
                  style: context.titleSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
