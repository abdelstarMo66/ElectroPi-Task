import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';

class BuildSettingsGroup extends StatelessWidget {
  const BuildSettingsGroup({required this.items, super.key});

  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.onSurfaceVariant.withValues(
          alpha: AppSize.op0_05,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: context.colorScheme.surfaceContainerLow.withValues(
            alpha: AppSize.op0_1,
          ),
        ),
      ),
      child: Column(children: items),
    );
  }
}
