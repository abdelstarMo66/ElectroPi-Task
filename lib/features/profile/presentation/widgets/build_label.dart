import 'package:flutter/material.dart';
import 'package:mzady/core/widgets/custom_text.dart';

import '../../../../core/utils/extensions.dart';

class BuildLabel extends StatelessWidget {
  const BuildLabel({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: CustomText(textKey: title, style: context.titleSmall),
      ),
    );
  }
}
