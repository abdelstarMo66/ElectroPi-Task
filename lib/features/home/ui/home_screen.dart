import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/widgets/custom_layout_body.dart';
import 'package:mzady/features/home/ui/widgets/build_home_header_section.dart';
import 'package:mzady/features/home/ui/widgets/home_app_bar_section.dart';
import 'package:mzady/features/home/ui/widgets/home_banner_section.dart';
import 'package:mzady/features/home/ui/widgets/home_closing_soon_section.dart';
import 'package:mzady/features/home/ui/widgets/home_featured_auction_section.dart';
import 'package:mzady/features/home/ui/widgets/home_quick_filters_section.dart';
import 'package:mzady/features/home/ui/widgets/home_search_bar_section.dart';
import 'package:mzady/features/home/ui/widgets/home_vip_grid_section.dart';
import 'package:mzady/features/home/ui/widgets/home_vip_header_section.dart';

import '../../../core/utils/extensions.dart';
import '../../../core/utils/size_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0.0),
      body: CustomLayoutBody(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const HomeAppBarSection(),
            const HomeBannerSection(),
            const HomeSearchBarSection(),
            const HomeQuickFiltersSection(),
            BuildHomeHeaderSection(
              title: 'Closing Soon',
              subtitle: 'Ending in minutes',
              onShowMore: () => context.push(Routes.closingSoonProducts),
            ),
            const HomeClosingSoonSection(),
            SliverToBoxAdapter(child: AppSize.s12.verticalSpace),
            const HomeVIPHeaderSection(),
            const HomeVIPGridSection(),
            SliverToBoxAdapter(child: AppSize.s12.verticalSpace),
            BuildHomeHeaderSection(
              title: 'Featured Assets',
              subtitle: 'Handpicked for you',
              onShowMore: () => context.push(Routes.featuredProducts),
            ),
            const HomeFeaturedAuctionSection(),
          ],
        ),
      ),
    );
  }
}
