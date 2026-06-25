import 'package:flutter/material.dart';
import 'package:mzady/features/home/ui/widgets/build_vip_card_item.dart';

class HomeVIPGridSection extends StatelessWidget {
  const HomeVIPGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.66,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) => const BuildVipCardItem(),
          childCount: 4,
        ),
      ),
    );
  }
}
