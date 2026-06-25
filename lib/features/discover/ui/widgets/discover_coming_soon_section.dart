import 'package:flutter/material.dart';
import 'package:mzady/features/discover/ui/widgets/build_coming_soon_item.dart';

class DiscoverComingSoonSection extends StatelessWidget {
  const DiscoverComingSoonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => BuildComingSoonItem(index: index),
        childCount: 3,
      ),
    );
  }
}
