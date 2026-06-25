import 'package:flutter/material.dart';
import 'package:mzady/features/messages/ui/widgets/build_suggested_contact_item.dart';

class BuildSuggestedContacts extends StatelessWidget {
  const BuildSuggestedContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => BuildSuggestedContactItem(index: index),
          childCount: 5,
        ),
      ),
    );
  }
}
