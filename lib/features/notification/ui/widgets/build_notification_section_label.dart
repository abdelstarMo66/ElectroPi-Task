import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/widgets/custom_text.dart';

class BuildNotificationSectionLabel extends StatelessWidget {
  const BuildNotificationSectionLabel({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 12),
        child: CustomText(
          textKey: title,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}
