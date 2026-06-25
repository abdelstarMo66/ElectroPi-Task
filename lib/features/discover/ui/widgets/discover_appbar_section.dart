import 'package:flutter/material.dart';
import 'package:mzady/core/themes/font_manager.dart';
import 'package:mzady/core/themes/style_manager.dart';

class DiscoverAppBarSection extends StatelessWidget {
  const DiscoverAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 110,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        titlePadding: const EdgeInsetsDirectional.only(start: 20, bottom: 16),
        title: Text(
          'DISCOVERY',
          style: TextStyleManager.createCustomFontStyle(
            context,
            fontSize: 20,
            fontWeight: FontWeightManager.black,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
