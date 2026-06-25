import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/custom_elevated_button.dart';

void showConfirmationDialog(
  BuildContext context, {
  required String title,
  required String message,
  required String confirmText,
  required Color confirmColor,
  required VoidCallback onConfirm,
}) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: '',
    transitionDuration: const Duration(milliseconds: 250),
    pageBuilder: (context, anim1, anim2) => const SizedBox.shrink(),
    transitionBuilder: (context, anim1, anim2, child) {
      return ScaleTransition(
        scale: Tween<double>(
          begin: 0.9,
          end: 1.0,
        ).animate(CurvedAnimation(parent: anim1, curve: Curves.easeOutBack)),
        child: FadeTransition(
          opacity: anim1,
          child: AlertDialog(
            backgroundColor: context.colorScheme.surface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.r24),
            ),
            title: Text(title, style: context.textTheme.displaySmall),
            content: Text(
              message,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
            actionsOverflowAlignment: OverflowBarAlignment.center,
            actions: [
              CustomElevatedButton(
                onPressed: onConfirm,
                text: confirmText,
                backgroundColor: confirmColor,
              ),
              CustomElevatedButton(
                onPressed: () => Navigator.pop(context),
                text: 'Cancel',
                textColor: context.colorScheme.onSurfaceVariant,
                backgroundColor: context.colorScheme.surface,
              ),
            ],
          ),
        ),
      );
    },
  );
}
