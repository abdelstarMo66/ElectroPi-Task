import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';

class BuildTrendingTags extends StatelessWidget {
  const BuildTrendingTags({super.key});

  @override
  Widget build(BuildContext context) {
    final tags = ['iPhone 15', 'Rolex', 'G-Wagon', 'Penthouses', 'Coins'];

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: tags
          .map(
            (tag) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: context.colorScheme.surface,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: context.colorScheme.surfaceContainerLow,
                ),
              ),
              child: Text(
                '#$tag',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: context.colorScheme.primary,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
