import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    required this.textKey,
    this.style,
    this.translateText = true,
    this.textAlign,
    this.maxLines,
    this.overflow,
    super.key,
  });

  final String textKey;
  final TextStyle? style;
  final bool translateText;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      translateText ? textKey.tr() : textKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow ?? (maxLines != null ? TextOverflow.ellipsis : null),
      style: style,
    );
  }
}
