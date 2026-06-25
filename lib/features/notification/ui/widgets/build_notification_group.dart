import 'package:flutter/material.dart';

import 'notification_card.dart';

class BuildNotificationGroup extends StatelessWidget {
  const BuildNotificationGroup({required this.items, super.key});

  final List<NotificationCard> items;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: items[index],
          ),
          childCount: items.length,
        ),
      ),
    );
  }
}
