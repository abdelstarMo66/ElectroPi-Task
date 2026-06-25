import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/themes/font_manager.dart';
import 'package:mzady/core/themes/style_manager.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/core/widgets/custom_text_field.dart';
import 'package:mzady/features/home/ui/widgets/build_trending_tags.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final recentItems = ['Rolex Submariner', 'BMW M4 2024', 'iPhone 15 Pro Max'];

  @override
  Widget build(BuildContext context) {
    final textTheme = context;

    return Scaffold(
      appBar: const CustomAppBar(title: Text('BID HUNTER')),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 12.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      controller: _searchController,
                      hintText: 'Search auctions, brands...',
                      prefixIcon: AppSvgIcon(
                        iconName: AssetsManager.icSearch,
                        color: context.colorScheme.onSurfaceVariant,
                        size: 20,
                      ),
                      textInputAction: TextInputAction.search,
                    ),
                  ),
                  AppSize.s12.horizontalSpace,
                  GestureDetector(
                    onTap: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      context.pop();
                    },
                    child: Text('Cancel', style: textTheme.titleLarge),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'RECENT SEARCHES',
                    style: TextStyleManager.createCustomFontStyle(
                      context,
                      fontSize: FontSize.s12,
                      fontWeight: FontWeightManager.extraBold,
                      letterSpacing: 1.5,
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Text('Clear All', style: textTheme.labelLarge),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                leading: AppSvgIcon(
                  iconName: AssetsManager.icRecently,
                  size: 18,
                  color: context.colorScheme.onSurfaceVariant,
                ),
                title: Text(recentItems[index], style: textTheme.titleSmall),
                trailing: Transform.rotate(
                  angle: 205 * (3.14 / 180),
                  child: AppSvgIcon(
                    iconName: AssetsManager.icArrowLeft,
                    size: 16,
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
                onTap: () {},
              ),
              childCount: recentItems.length,
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 15),
              child: Text(
                'TRENDING NOW',
                style: TextStyleManager.createCustomFontStyle(
                  context,
                  fontSize: FontSize.s12,
                  fontWeight: FontWeightManager.extraBold,
                  letterSpacing: 1.5,
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: BuildTrendingTags(),
            ),
          ),
        ],
      ),
    );
  }
}
