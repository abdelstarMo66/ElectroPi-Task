import 'package:flutter/material.dart';
import 'package:mzady/features/home/ui/widgets/build_closing_soon_item.dart';

class HomeClosingSoonSection extends StatelessWidget {
  const HomeClosingSoonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          padding: const EdgeInsets.only(left: 20),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => const BuildClosingSoonItem(),
        ),
      ),
    );
  }
}
