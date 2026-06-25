import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/custom_text.dart';

class SettingsTrailingItem extends StatelessWidget {
  const SettingsTrailingItem({
    required this.title,
    required this.icon,
    required this.trailing,
    super.key,
    this.isLast = false,
  });

  final String title;
  final Widget icon;
  final Widget trailing;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: context.colorScheme.primary.withValues(
                alpha: AppSize.op0_1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: icon,
          ),
          AppSize.s16.horizontalSpace,
          CustomText(textKey: title, style: context.titleMedium),
          const Spacer(),
          trailing,
        ],
      ),
    );
  }
}
