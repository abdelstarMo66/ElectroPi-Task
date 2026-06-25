import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../utils/extensions.dart';
import '../utils/size_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.controller,
    required this.hintText,
    super.key,
    this.validator,
    this.keyboardType,
    this.isObscureText = false,
    this.hintStyle,
    this.fillColor,
    this.borderRadius = AppSize.r16,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputAction,
    this.onFieldSubmitted,
    this.maxLines = 1,
    this.enabled,
  });

  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool isObscureText;
  final TextStyle? hintStyle;
  final Color? fillColor;
  final double borderRadius;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final void Function(String)? onFieldSubmitted;
  final int maxLines;
  final bool? enabled;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: isObscureText,
      maxLines: maxLines,
      enabled: enabled ?? true,
      textInputAction: textInputAction ?? TextInputAction.next,
      onFieldSubmitted: onFieldSubmitted,
      cursorColor: context.colorScheme.primary,
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      style: context.bodyLarge,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSize.s20,
          vertical: AppSize.s18,
        ),
        hintText: hintText.tr(),
        hintStyle:
            hintStyle ??
            context.bodySmall?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
        fillColor: fillColor ?? context.colorScheme.surfaceContainerLow,
        filled: true,
        prefixIcon: prefixIcon != null ? _buildIconPadding(prefixIcon!) : null,
        suffixIcon: suffixIcon != null ? _buildIconPadding(suffixIcon!) : null,
        prefixIconConstraints: const BoxConstraints(minWidth: AppSize.s32),
        suffixIconConstraints: const BoxConstraints(minWidth: AppSize.s32),
        enabledBorder: _border(
          BorderSide(
            color: context.colorScheme.outlineVariant,
            width: AppSize.s1_5,
          ),
        ),
        disabledBorder: _border(
          BorderSide(
            color: context.colorScheme.outlineVariant,
            width: AppSize.s1_5,
          ),
        ),
        focusedBorder: _border(
          BorderSide(color: context.colorScheme.primary, width: AppSize.s1_5),
        ),
        errorBorder: _border(
          BorderSide(color: context.colorScheme.error, width: AppSize.s1_5),
        ),
        focusedErrorBorder: _border(
          BorderSide(color: context.colorScheme.error, width: AppSize.s1_5),
        ),
        errorStyle: context.labelSmall?.copyWith(
          color: context.colorScheme.error,
        ),
      ),
    );
  }

  Widget _buildIconPadding(Widget icon) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: AppSize.s12),
    child: icon,
  );

  OutlineInputBorder _border(BorderSide side) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadius),
    borderSide: side,
  );
}
