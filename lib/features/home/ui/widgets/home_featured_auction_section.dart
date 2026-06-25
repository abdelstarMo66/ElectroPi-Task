import 'package:flutter/material.dart';
import 'package:mzady/features/home/ui/widgets/featured_auction_card_item.dart';

class HomeFeaturedAuctionSection extends StatelessWidget {
  const HomeFeaturedAuctionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          return FeaturedAuctionCardItem(key: ValueKey('auction_$index'));
        }, childCount: 10),
      ),
    );
  }
}
