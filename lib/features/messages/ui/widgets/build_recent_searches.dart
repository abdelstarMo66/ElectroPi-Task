import 'package:flutter/material.dart';
import 'package:mzady/features/messages/ui/widgets/build_recent_search_item.dart';

class BuildRecentSearches extends StatelessWidget {
  const BuildRecentSearches({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> recents = [
      'Ahmed Zaki',
      'Rolex Watch',
      'iPhone Auction',
    ];

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => BuildRecentSearchItem(name: recents[index]),
          childCount: recents.length,
        ),
      ),
    );
  }
}
