import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.text,
    required this.onPressed,
    super.key,
    this.textStyle,
    this.backgroundColor,
    this.textColor,
    this.borderRadius = AppSize.r12,
    this.elevation = AppSize.op0_0,
    this.icon,
    this.borderColor,
    this.fixedSize,
    this.padding,
    this.margin,
  });

  final String text;
  final void Function()? onPressed;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Color? textColor;
  final double borderRadius;
  final double elevation;
  final Widget? icon;
  final Color? borderColor;
  final Size? fixedSize;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fixedSize?.width ?? double.infinity,
      margin: margin ?? EdgeInsets.zero,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? context.colorScheme.primary,
          foregroundColor: textColor ?? context.colorScheme.onPrimary,
          elevation: elevation,
          shadowColor: Colors.transparent,
          overlayColor: context.colorScheme.onPrimary.withValues(
            alpha: AppSize.op0_1,
          ),
          padding:
              padding ?? const EdgeInsets.symmetric(horizontal: AppSize.s16),
          fixedSize: fixedSize ?? const Size(double.infinity, AppSize.s55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: borderColor != null
                ? BorderSide(color: borderColor!, width: AppSize.s1_5)
                : BorderSide.none,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[icon!, const SizedBox(width: AppSize.s10)],
            CustomText(
              textKey: text,
              style:
                  textStyle ??
                  context.textTheme.titleMedium?.copyWith(
                    color: textColor ?? context.colorScheme.surface,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
