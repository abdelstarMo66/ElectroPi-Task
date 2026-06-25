import 'package:flutter/material.dart';
import 'package:mzady/features/discover/ui/widgets/build_auction_story_item.dart';

class DiscoverAuctionStoriesSection extends StatelessWidget {
  const DiscoverAuctionStoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> partnerStories = [
      {
        'brand': 'Rolex',
        'item': 'Daytona Gold',
        'time': '05:20',
        'image': 'https://images.unsplash.com/photo-1523170335258-f5ed11844a49',
      },
      {
        'brand': 'Porsche',
        'item': '911 Turbo S',
        'time': '12:45',
        'image': 'https://images.unsplash.com/photo-1503376780353-7e6692767b70',
      },
      {
        'brand': 'Real Estate',
        'item': 'Penthouse Nile',
        'time': '20:00',
        'image': 'https://images.unsplash.com/photo-1512917774080-9991f1c4c750',
      },
    ];

    return SliverToBoxAdapter(
      child: Container(
        height: 220,
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: partnerStories.length,
          itemBuilder: (context, index) =>
              BuildAuctionStoryItem(storyData: partnerStories[index]),
        ),
      ),
    );
  }
}
