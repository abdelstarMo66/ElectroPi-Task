import 'package:flutter/material.dart';
import 'package:mzady/features/discover/ui/widgets/build_trending_card_item.dart';

class DiscoverTrendingSliderSection extends StatelessWidget {
  const DiscoverTrendingSliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> trendingItems = [
      {
        'title': 'Limited Edition\nSpace Gray Watch',
        'price': '\$85,000',
        'image': 'https://images.unsplash.com/photo-1523275335684-37898b6baf30',
      },
      {
        'title': 'Vintage Porsche\n911 Carrera',
        'price': '\$120,000',
        'image': 'https://images.unsplash.com/photo-1503376780353-7e6692767b70',
      },
      {
        'title': 'Modern Penthouse\nNile View',
        'price': '\$450,000',
        'image': 'https://images.unsplash.com/photo-1512917774080-9991f1c4c750',
      },
    ];

    return SliverToBoxAdapter(
      child: SizedBox(
        height: 400,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: trendingItems.length,
          itemBuilder: (context, index) {
            return BuildTrendingCardItem(data: trendingItems[index]);
          },
        ),
      ),
    );
  }
}
