import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/features/home/ui/widgets/category_card_item.dart';

class AllCategoriesScreen extends StatelessWidget {
  const AllCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {
        'title': 'Luxury Watches',
        'items': '124',
        'image': 'https://images.unsplash.com/photo-1523170335258-f5ed11844a49',
      },
      {
        'title': 'Classic & Sports Cars',
        'items': '45',
        'image': 'https://images.unsplash.com/photo-1503376780353-7e6692767b70',
      },
      {
        'title': 'Premium Real Estate',
        'items': '12',
        'image': 'https://images.unsplash.com/photo-1512917774080-9991f1c4c750',
      },
      {
        'title': 'Fine Art & Sculptures',
        'items': '67',
        'image': 'https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5',
      },
      {
        'title': 'High-Tech & Gadgets',
        'items': '89',
        'image': 'https://images.unsplash.com/photo-1498050108023-c5249f4df085',
      },
      {
        'title': 'Jewelry & Diamonds',
        'items': '156',
        'image': 'https://images.unsplash.com/photo-1582213726854-4584ef93402b',
      },
      {
        'title': 'Rare Coins & Antiques',
        'items': '34',
        'image': 'https://images.unsplash.com/photo-1589052062332-68939a311812',
      },
      {
        'title': 'Designer Handbags',
        'items': '92',
        'image': 'https://images.unsplash.com/photo-1584917033904-845d60e97b29',
      },
      {
        'title': 'Sports Memorabilia',
        'items': '21',
        'image': 'https://images.unsplash.com/photo-1461896836934-ffe607ba8211',
      },
      {
        'title': 'Luxury Furniture',
        'items': '58',
        'image': 'https://images.unsplash.com/photo-1555041469-a586c61ea9bc',
      },
    ];

    return Scaffold(
      appBar: const CustomAppBar(title: Text('EXPLORE')),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        itemCount: categories.length,
        separatorBuilder: (context, index) => AppSize.s16.verticalSpace,
        itemBuilder: (context, index) {
          return CategoryCardItem(
            title: categories[index]['title']!,
            itemsCount: categories[index]['items']!,
            imageUrl: categories[index]['image']!,
          );
        },
      ),
    );
  }
}
