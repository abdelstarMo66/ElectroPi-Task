import 'package:flutter/material.dart';
import 'package:mzady/core/widgets/custom_layout_body.dart';
import 'package:mzady/features/discover/ui/widgets/build_discover_header_section.dart';
import 'package:mzady/features/discover/ui/widgets/discover_appbar_section.dart';
import 'package:mzady/features/discover/ui/widgets/discover_auction_stories_section.dart';
import 'package:mzady/features/discover/ui/widgets/discover_coming_soon_section.dart';
import 'package:mzady/features/discover/ui/widgets/discover_trending_slider_section.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomLayoutBody(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            DiscoverAppBarSection(),
            DiscoverAuctionStoriesSection(),
            BuildDiscoverHeaderSection(title: 'TRENDING NOW'),
            DiscoverTrendingSliderSection(),
            BuildDiscoverHeaderSection(title: 'Coming Soon'),
            DiscoverComingSoonSection(),
          ],
        ),
      ),
    );
  }
}
