import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/features/home/ui/widgets/build_quick_filter_item.dart';

class HomeQuickFiltersSection extends StatelessWidget {
  const HomeQuickFiltersSection({super.key});

  final List<Map<String, dynamic>> categories = const [
    {'name': 'Explore', 'icon': AssetsManager.icRocket},
    {'name': 'Motors', 'icon': Icons.directions_car_rounded},
    {'name': 'Estate', 'icon': Icons.home_work_rounded},
    {'name': 'Watches', 'icon': Icons.watch_rounded},
    {'name': 'Art', 'icon': Icons.palette_rounded},
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: SizedBox(
          height: 100,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsetsDirectional.only(end: 16),
                child: BuildQuickFilterItem(
                  category: categories[index],
                  index: index,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
